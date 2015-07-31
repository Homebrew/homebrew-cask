cask :v1 => 'menubar-colors' do
  version '2.0.0'
  sha256 'e150d4d0b2abe1183c38393ec4ea186b753925e3c1978aeebce34586e027feef'

  url "https://github.com/nvzqz/menubar-colors/releases/download/v#{version}/Menubar-Colors.zip"
  appcast 'https://github.com/nvzqz/menubar-colors/releases.atom'
  name 'Menubar Colors'
  homepage 'https://github.com/nvzqz/Menubar-Colors'
  license :mit

  app 'Menubar Colors.app'
end
