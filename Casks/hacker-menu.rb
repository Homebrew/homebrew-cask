cask :v1 => 'hacker-menu' do
  version '1.1.3'
  sha256 'fffa9d8b99984deafc8c1cba01fb399f1c4fdfb4a2a5132718c62a991fb53c97'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jingweno/hacker-menu/releases/download/v#{version}/hacker-menu-mac.zip"
  appcast 'https://github.com/jingweno/hacker-menu/releases.atom'
  name 'Hacker Menu'
  homepage 'https://hackermenu.io/'
  license :mit

  app 'Hacker Menu.app'
end
