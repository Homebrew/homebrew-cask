cask 'reborn' do
  version '0.4.52'
  sha256 '6c15cf9fce4124caf416fab66f3a4c3838c34fc13b63873c79bad14980754124'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom',
          checkpoint: 'b3965f23daebf5aebf436a593da6317cdc230aa72d43a1ad889e143fa4f6c6ec'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
