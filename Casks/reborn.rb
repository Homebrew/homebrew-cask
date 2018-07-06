cask 'reborn' do
  version '0.5.47'
  sha256 'a44413eb7197dae4a3c336ddbb35d4168821e1445264ca47873d5fb4160a0c30'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
