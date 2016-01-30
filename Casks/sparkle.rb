cask 'sparkle' do
  version '1.13.1'
  sha256 '82cd7f675fa4f4a9f97943478afd7b0839767e479abe6bbd05ec67c0cc5b8056'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom',
          checkpoint: '7c510eecb6b102bb8908f5761875d5400ac45b985b14dd246174b10689aa4970'
  name 'Sparkle'
  homepage 'http://sparkle-project.org/'
  license :mit

  app 'Sparkle Test App.app'
end
