cask 'logdna-agent' do
  version '1.3.4'
  sha256 '0f841e2cea8b3bce94f89806c2d567f24b282fdebe7c47e1201da248383b5fe0'

  # github.com/logdna/logdna-agent was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-agent/releases/download/#{version}/logdna-agent.pkg"
  appcast 'https://github.com/logdna/logdna-agent/releases.atom',
          checkpoint: '84a37f85b867f410014b7caa6e46b0a1ac9a07d5f83c1ec51c9eaf848a13d475'
  name 'LogDNA Agent'
  homepage 'https://logdna.com/'

  pkg 'logdna-agent.pkg'

  uninstall pkgutil:   'com.logdna.logdna-agent',
            launchctl: 'com.logdna.logdna-agentd'

  caveats <<-EOS.undent
    When you first start logdna-agent, you must set your LogDNA API key with the command:
      sudo logdna-agent -k <api-key>

    To always run logdna-agent in the background, use the command:
      sudo launchctl load -w /Library/LaunchDaemons/com.logdna.logdna-agent.plist
  EOS
end
