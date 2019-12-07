cask 'logdna-agent' do
  version '1.6.2'
  sha256 '5b3eba4a8e84ceb08ebdec50c550a40a32c7d893692d5c1a25cc68470419a55c'

  # github.com/logdna/logdna-agent was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-agent/releases/download/#{version}/logdna-agent-#{version}.pkg"
  appcast 'https://github.com/logdna/logdna-agent/releases.atom'
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
