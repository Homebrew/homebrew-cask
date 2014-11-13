cask :v1 => 'aerofs' do
  version '0.8.67'
  sha256 'abb05bfdea788520f02ec5f526d10ab336d183a96598007cc98e29c088b8b567'

  url "https://dsy5cjk52fz4a.cloudfront.net/AeroFSInstall-#{version}.dmg"
  homepage 'https://www.aerofs.com/'
  license :gratis

  app 'AeroFS.app'
end
