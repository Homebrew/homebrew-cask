cask 'reborn' do
  version '0.5.41'
  sha256 '6fd5045b9e8f8dceeb443f0df81ce8e0b01455191538e297e3c04644552c5681'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
