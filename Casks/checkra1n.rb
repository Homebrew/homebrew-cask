cask 'checkra1n' do
  version '0.9.8'
  sha256 'e7f07934860027fe7c503922498ae86d43fd79dc1fc004a85bad24e0a002a7f8'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
