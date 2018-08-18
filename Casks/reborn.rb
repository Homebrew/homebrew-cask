cask 'reborn' do
  version '0.5.50'
  sha256 'e0a6d9f8b3839a484f831dd964d29a928882e42b8abcfe925b3a77d70de541e3'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
