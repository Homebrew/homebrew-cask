cask 'proxpn' do
  version '4.3.5.2'
  sha256 '754d91b6e927cbc3eea0279accf2d7b41b0d548b98e04a2922663992d7774789'

  url "https://www.proxpn.com/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'http://www.proxpn.com/updater/appcast.rss',
          checkpoint: 'bea9ff2d33380580e343857de18e45f61a7b45848d72280a8914408acbbcb850'
  name 'proXPN'
  homepage 'https://www.proxpn.com/'
  license :freemium

  app 'ProXPN.app'
end
