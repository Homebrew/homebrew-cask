cask 'jin' do
  version '2.14.1'
  sha256 'd5592e35bc1e1bb6cf8337d0adaf883c7f5964e9e6f378f66f3fa29979d653aa'

  # sourceforge.net/jin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jin/jin/jin-#{version}/jin-#{version}-macosx-lion.dmg"
  appcast 'https://sourceforge.net/projects/jin/rss?path=/jin',
          checkpoint: '71e7b29ab62ebcd3a8b823f43a289b95f93514d4a4b0936a03423e1a634394c6'
  name 'Jin'
  homepage 'http://www.jinchess.com/'

  app 'Jin.app'
end
