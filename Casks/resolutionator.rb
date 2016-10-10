cask 'resolutionator' do
  version '1.1'
  sha256 'bb3fe019be566f2b194afe8233d2c96becd3c803f1741577511a70e848250562'

  url 'https://manytricks.com/download/resolutionator'
  appcast 'https://manytricks.com/resolutionator/appcast.xml',
          checkpoint: '65a6bf2d102c806c0021f5f175d4ce2ad79d577784c0bd42414eb0da40f17e90'
  name 'Resolutionator'
  homepage 'https://manytricks.com/resolutionator/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Resolutionator.app'
end
