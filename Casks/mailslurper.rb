cask 'mailslurper' do
  version '1.14.1'
  sha256 :no_check

  # github.com/mailslurper was verified as official when first introduced to the cask
  url "https://github.com/mailslurper/mailslurper/releases/download/#{version}/mailslurper-#{version}-osx.zip"
  appcast 'https://github.com/mailslurper/mailslurper/releases'
  name 'MailSlurper'
  homepage 'http://mailslurper.com'

  shimscript = "#{staged_path}/mailslurper.wrapper.sh"
  binary shimscript, target: 'mailslurper'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd '#{staged_path}' && ./mailslurper
    EOS
  end

  postflight do
    set_permissions "#{staged_path}/mailslurper.wrapper.sh", '0755'
  end
end
