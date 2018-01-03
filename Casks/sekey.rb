cask 'sekey' do
  version '0.1'
  sha256 '8d473f7214ba76b70ca30905e2ebd07d7c421f1cff320285bd8ec8d2a7a5b083'

  url "https://github.com/ntrippar/sekey/releases/download/#{version}/SeKey-#{version}.pkg"
  appcast 'https://github.com/ntrippar/sekey/releases.atom',
          checkpoint: 'ed0d4a9db584f983da245bf83ec70ecdf1fe0e7109d10660b2dd43225e2f53f8'
  name 'SeKey'
  homepage 'https://github.com/ntrippar/sekey'

  pkg "SeKey-#{version}.pkg"
  binary "#{appdir}/SeKey.app/Contents/MacOS/sekey"

  postflight do
    launchd_plist = "#{ENV['HOME']}/Library/LaunchAgents/com.ntrippar.sekey.plist"

    system_command '/bin/launchctl',
                   args: ['unload', '-F', launchd_plist],
                   sudo: true

    set_ownership launchd_plist

    system_command '/bin/launchctl',
                   args: ['load', '-F', launchd_plist]
  end

  uninstall launchctl: 'com.ntrippar.sekey',
            pkgutil:   'com.ntrippar.sekey'

  zap trash: '~/.sekey'

  caveats <<~EOS
    Append the following line to your ~/.bash_profile or ~/.zshrc:

      export SSH_AUTH_SOCK=$HOME/.sekey/ssh-agent.ssh

    then source the file to update your current session.
  EOS
end
