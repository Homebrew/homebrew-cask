cask 'picgo' do
  version '2.2.0'
  sha256 '5e36ed791e4000b2b1ad832f71091c97cdce6662eb0a247403dbcaa3662eb632'

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-mac.zip"
  appcast 'https://github.com/Molunerfinn/PicGo/releases.atom'
  name 'PicGo'
  homepage 'https://github.com/Molunerfinn/PicGo'

  app 'PicGo.app'
end
