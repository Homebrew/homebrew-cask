cask 'logdna-agent' do
  version '1.3.6'
  sha256 '2d944d6f27c28516ed6f6d5c82e13935fe1f99e8d244baabec31d1f734ff61fe'

  # github.com/logdna/logdna-agent was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-agent/releases/download/#{version}/logdna-agent-#{version}.pkg"
  appcast 'https://github.com/logdna/logdna-agent/releases.atom',
          checkpoint: 'd88f81b722d157b17968ab1f0201f166f4a9552c1bd0c119719440fe9c458abd'
  name 'LogDNA Agent'
  homepage 'https://logdna.com/'

  pkg "logdna-agent-#{version}.pkg"

  uninstall pkgutil:   'com.logdna.logdna-agent',
            launchctl: 'com.logdna.logdna-agentd'

  caveats <<-EOS.undent
    When you first start logdna-agent, you must set your LogDNA API key with the command:
      sudo logdna-agent -k <api-key>

    To always run logdna-agent in the background, use the command:
      sudo launchctl load -w /Library/LaunchDaemons/com.logdna.logdna-agent.plist
  EOS
end
