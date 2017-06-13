cask 'mediaelch' do
  version '2.4.2'
  sha256 'f82d4c157ef64e25529744fb962771ce678a9e2e3a94b18b3d398dfa5b8b9452'

  url "http://www.kvibes.de/releases/mediaelch/#{version}/MediaElch-#{version}.dmg"
  appcast 'https://github.com/Komet/MediaElch/releases.atom',
          checkpoint: 'ed0fc59d36c76777a9245ef278968e979e7f6ee0b35250a770fcbca34ed851e1'
  name 'MediaElch'
  homepage 'http://www.kvibes.de/en/mediaelch/'

  app 'MediaElch.app'
end
