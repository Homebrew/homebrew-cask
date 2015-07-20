cask :v1 => 'menubar-colors' do
  version '1.4.1'
  sha256 '98f7136e01ac5e8da0d265258100ffda98d5e95f84d86bcb78d3345b2e2f56d6'

  url "https://github.com/nvzqz/menubar-colors/releases/download/v#{version}/Menubar-Colors.zip"
  appcast 'https://github.com/nvzqz/menubar-colors/releases.atom'
  name 'Menubar Colors'
  homepage 'https://github.com/nvzqz/Menubar-Colors'
  license :mit

  app 'Menubar Colors.app'
end
