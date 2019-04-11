cask 'picgo' do
  version '2.0.4'
  sha256 '9fd2e86a60072a582a1185b6bd27aba4c0ca71265ac08ea71dbf28f3daf56a79'

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-mac.zip"
  appcast 'https://github.com/Molunerfinn/PicGo/releases.atom'
  name 'PicGo'
  homepage 'https://github.com/Molunerfinn/PicGo'

  app 'PicGo.app'
end
