cask 'reborn' do
  version '0.5.60'
  sha256 '2b48e12eb3da6b6b6667b3e1bbf0893d176549c636dd75191c31ca5fcfeb647f'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
