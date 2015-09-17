cask :v1 => 'hacker-menu' do
  version :latest
  sha256 :no_check

  url 'https://hackermenu.io/downloads/mac'
  name 'Hacker Menu'
  homepage 'https://hackermenu.io/'
  license :oss

  app 'Hacker Menu.app'
end
