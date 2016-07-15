cask 'logdna-agent' do
  version '1.3.1'
  sha256 '034ef3ae343db0e46a92fed8bb9ccc874135634be3bc4e2a75f0feaee6a6e3f9'

  # github.com/logdna/logdna-agent was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-agent/releases/download/#{version}/logdna-agent.pkg"
  appcast 'https://github.com/logdna/logdna-agent/releases.atom',
          checkpoint: '2d8fcf937fe0331d4a5d2dd2b5d2ae07eaa6e97c69e49c4f062f73009babcc21'
  name 'LogDNA Agent'
  homepage 'https://www.logdna.com/'
  license :mit

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
