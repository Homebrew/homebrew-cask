cask 'reborn' do
  version '0.4.52'
  sha256 '6c15cf9fce4124caf416fab66f3a4c3838c34fc13b63873c79bad14980754124'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
