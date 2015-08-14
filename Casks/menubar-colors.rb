cask :v1 => 'menubar-colors' do
  version '2.1.0'
  sha256 '29825173a53c015c0eedfeadac77cef3a4d2a563a8a6a6ce905be78acc17a810'

  url "https://github.com/nvzqz/menubar-colors/releases/download/v#{version}/Menubar-Colors.zip"
  appcast 'https://github.com/nvzqz/menubar-colors/releases.atom'
  name 'Menubar Colors'
  homepage 'https://github.com/nvzqz/Menubar-Colors'
  license :mit

  app 'Menubar Colors.app'
end
