cask :v1 => 'hacker-menu' do
  version '1.1.4'
  sha256 '1ce1c9f9db7c2fc00f3804b8fdca57b02cf01c39fcefda2399f91f82c854414b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jingweno/hacker-menu/releases/download/v#{version}/hacker-menu-mac.zip"
  appcast 'https://github.com/jingweno/hacker-menu/releases.atom'
  name 'Hacker Menu'
  homepage 'https://hackermenu.io/'
  license :mit

  app 'Hacker Menu.app'
end
