cask :v1 => 'proxpn' do
  version '4.1.2'
  sha256 '132f15d6d55c55160375bca4b99f8fe562dc75252e3bf526d7ee2a8f6e3e8c83'

  url "https://www.proxpn.biz/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'https://www.proxpn.biz/updater/appcast.rss'
  name 'proXPN'
  homepage 'https://www.proxpn.biz/'
  license :freemium

  app 'ProXPN.app'
end
