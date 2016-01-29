cask 'sparkle' do
  version '1.13.1'
  sha256 '82cd7f675fa4f4a9f97943478afd7b0839767e479abe6bbd05ec67c0cc5b8056'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom',
          checkpoint: 'b829340e70e28bc733f83985a497c00027e26959abedb111653bb1d92f00f93a'
  name 'Sparkle'
  homepage 'http://sparkle-project.org/'
  license :mit

  app 'Sparkle Test App.app'
end
