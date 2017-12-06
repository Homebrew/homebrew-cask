cask 'sekey' do
  version '0.1'
  sha256 '86cd69753de6a186f5991c7148014e8349ecc59d6bd15da19823a24e62faa4db'

  url "https://github.com/ntrippar/sekey/releases/download/#{version}/SeKey-#{version}.zip"
  name 'SeKey'
  homepage 'https://github.com/ntrippar/sekey'

  app 'SeKey.app'
  binary "#{appdir}/SeKey.app/Contents/MacOS/sekey"

  postflight do
    launchd_plist = "#{ENV['HOME']}/Library/LaunchAgents/com.ntrippar.sekey.plist"

    system_command '/bin/launchctl',
                   args:         ['unload', '-F', launchd_plist],
                   print_stdout: false,
                   print_stderr: false

    IO.write launchd_plist, <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
          <key>EnvironmentVariables</key>
          <dict>
            <key>PATH</key>
            <string>/usr/bin:/bin:/usr/sbin:/sbin</string>
          </dict>
          <key>Label</key>
          <string>com.ntrippar.sekey</string>
          <key>ProgramArguments</key>
          <array>
              <string>#{appdir}/SeKey.app/Contents/MacOS/sekey</string>
              <string>--daemon</string>
          </array>
          <key>StandardErrorPath</key>
          <string>#{HOMEBREW_PREFIX}/var/log/#{token}/#{token}.err.log</string>
          <key>StandardOutPath</key>
          <string>#{HOMEBREW_PREFIX}/var/log/#{token}/#{token}.out.log</string>
          <key>KeepAlive</key>
          <true/>
          <key>RunAtLoad</key>
          <true/>
          <key>ThrottleInterval</key>
          <integer>30</integer>
      </dict>
      </plist>
    EOS

    system_command '/bin/launchctl',
                   args: ['load', launchd_plist]
  end

  uninstall launchctl: 'com.ntrippar.sekey'

  zap trash: [
               '~/.sekey',
               "#{HOMEBREW_PREFIX}/var/log/#{token}",
             ]

  caveats <<~EOS
    Append the following line to your ~/.bash_profile or ~/.zshrc:

      export SSH_AUTH_SOCK=$HOME/.sekey/ssh-agent.ssh

    then source the file to update your current session.
  EOS
end
