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
    version '1.7.0'
    sha256 'ccf5b14853acf8e80cf2fc00b614fb8597b59b288201a898c9ce0d4c755a7d6f'
  end

  url "https://github.com/IngmarStein/Monolingual/releases/download/v#{version}/Monolingual-#{version}.dmg"
  appcast 'https://github.com/IngmarStein/Monolingual/releases.atom'
  name 'Monolingual'
  homepage 'https://ingmarstein.github.io/Monolingual/'
  license :gpl

  app 'Monolingual.app'
end
