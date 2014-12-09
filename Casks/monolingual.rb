cask :v1 => 'monolingual' do

  if MacOS.version <= :tiger
    version '1.3.9'
    sha256 '7bf1ec8642ec8674443945dec12cf9c991306912e1e27c305c6db4776e037b16'
  elsif MacOS.version <= :snow_leopard
    version '1.4.5'
    sha256 '7684b6b6d41b784d06e636f5e7993ca3730680ccbfa83e90e74b43be58ad3e21'
  elsif MacOS.version <= :mavericks
    version '1.5.10'
    sha256 '2dd4d1164ced9c6ff431eb99db12e46faa10747c7753ed3889d6df493ee096a5'
  else
    version '1.6.1'
    sha256 '45110312eba0ffb0ea92f3ac36850b3e557c07d2cdc294b677769eccd5da5697'
    appcast 'https://ingmarstein.github.io/Monolingual/appcast.xml',
            :sha256 => 'a536d84e8430d0ba64638e5696f67e96259cfdb81aacd8c2df0a078ff3ea4672'
  end

  url "https://github.com/IngmarStein/Monolingual/releases/download/v#{version}/Monolingual-#{version}.dmg"
  homepage 'https://ingmarstein.github.io/Monolingual/'
  license :oss

  app 'Monolingual.app'
end
