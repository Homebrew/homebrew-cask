cask :v1 => 'monolingual' do

  if MacOS.release <= :tiger
    version '1.3.9'
    sha256 '7bf1ec8642ec8674443945dec12cf9c991306912e1e27c305c6db4776e037b16'
  elsif MacOS.release <= :snow_leopard
    version '1.4.5'
    sha256 '7684b6b6d41b784d06e636f5e7993ca3730680ccbfa83e90e74b43be58ad3e21'
  elsif MacOS.release <= :mavericks
    version '1.5.10'
    sha256 '2dd4d1164ced9c6ff431eb99db12e46faa10747c7753ed3889d6df493ee096a5'
  else
    version '1.6.3'
    sha256 '7b6d0dd47952e3c864901f05be3a1cc7f47c86c8addc104b60d0d832722235d0'
  end

  url "https://github.com/IngmarStein/Monolingual/releases/download/v#{version}/Monolingual-#{version}.dmg"
  appcast 'https://github.com/IngmarStein/Monolingual/releases.atom'
  homepage 'https://ingmarstein.github.io/Monolingual/'
  license :gpl

  app 'Monolingual.app'
end
