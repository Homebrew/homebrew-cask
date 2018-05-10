cask 'dynamodb-local' do
  version :latest
  sha256 :no_check

  # s3-us-west-2.amazonaws.com/dynamodb-local was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz'
  name 'Amazon DynamoDB Local'
  homepage 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/dynamodb-local.wrapper.sh"
  binary shimscript, target: 'dynamodb-local'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd "$(dirname "$(readlink -n "${0}")")" && \
        java -Djava.library.path='./DynamoDBLocal_lib' -jar 'DynamoDBLocal.jar' "$@"
    EOS
  end

  launchd_plist = "#{staged_path}/dynamodb-local.plist"

  postflight do
    IO.write launchd_plist, <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>caskroom.dynamodb-local</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{HOMEBREW_PREFIX}/bin/dynamodb-local</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>KeepAlive</key>
        <false/>
        <key>WorkingDirectory</key>
        <string>#{HOMEBREW_PREFIX}</string>
        <key>StandardErrorPath</key>
        <string>#{HOMEBREW_PREFIX}/var/log/dynamodb-local-error.log</string>
        <key>StandardOutPath</key>
        <string>#{HOMEBREW_PREFIX}/var/log/dynamodb-local.log</string>
        <key>HardResourceLimits</key>
        <dict>
          <key>NumberOfFiles</key>
          <integer>4096</integer>
        </dict>
        <key>SoftResourceLimits</key>
        <dict>
          <key>NumberOfFiles</key>
          <integer>4096</integer>
        </dict>
      </dict>
      </plist>
      EOS

    system_command '/bin/launchctl',
                   args: ['unload', '-F', launchd_plist]

    system_command '/bin/launchctl',
                   args: ['load', '-F', launchd_plist]
  end

  caveats do
    depends_on_java('6+')
  end
end
