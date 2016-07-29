cask 'power-manager' do
  version '4.5.3'
  sha256 '37515952521e4499e0051228dcf579c8be1bf198dceb2feb5865d506420088b7'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          checkpoint: 'f28c7b220064ce2c6315a95717334589036edf8ff8c80e5a5455d27057cfdcc4'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager.app'
end
