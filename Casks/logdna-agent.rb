cask 'logdna-agent' do
  version '1.4.5'
  sha256 '947982b99b60e3df674e16de3ec486c36525e3a85dacfd473c1dcfa6e9cf35bf'

  # github.com/logdna/logdna-agent was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-agent/releases/download/#{version}/logdna-agent-#{version}.pkg"
  appcast 'https://github.com/logdna/logdna-agent/releases.atom',
          checkpoint: '6fe65c59799dcee2d5260977940a3e9c1de9c378f2e867a91245b5fb13d21a92'
  name 'LogDNA Agent'
  homepage 'https://logdna.com/'

  pkg "logdna-agent-#{version}.pkg"

  uninstall pkgutil:   'com.logdna.logdna-agent',
            launchctl: 'com.logdna.logdna-agentd'

  caveats <<~EOS
    When you first start logdna-agent, you must set your LogDNA API key with the command:
      sudo logdna-agent -k <api-key>

    To always run logdna-agent in the background, use the command:
      sudo launchctl load -w /Library/LaunchDaemons/com.logdna.logdna-agent.plist
  EOS
end
