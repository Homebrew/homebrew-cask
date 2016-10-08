cask 'mountain-duck' do
  version '1.5.8.4906'
  sha256 'a411968a710d06e487a26151d465c45935b6ddca6ce4221dd480e203cd0e13ec'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '875808506f655a7361e187a2b8e2e4c9ec9ab27e2b042edb7db42585cd67b227'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
