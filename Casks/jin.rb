cask 'jin' do
  version '2.14.1'
  sha256 'd5592e35bc1e1bb6cf8337d0adaf883c7f5964e9e6f378f66f3fa29979d653aa'

  # sourceforge.net/jin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jin/jin/jin-#{version}/jin-#{version}-macosx-lion.dmg"
  appcast 'https://sourceforge.net/projects/jin/rss',
          checkpoint: '7e7fad63d48c0ec749eb03633c65428977a78c5954f95fa1c933c73445ca5ad4'
  name 'Jin'
  homepage 'http://www.jinchess.com/'
  license :gpl

  app 'Jin.app'
end
