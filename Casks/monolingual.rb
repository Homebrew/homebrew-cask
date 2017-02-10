cask 'monolingual' do
  if MacOS.version <= :tiger
    version '1.3.9'
    sha256 '7bf1ec8642ec8674443945dec12cf9c991306912e1e27c305c6db4776e037b16'
  elsif MacOS.version <= :snow_leopard
    version '1.4.5'
    sha256 '7684b6b6d41b784d06e636f5e7993ca3730680ccbfa83e90e74b43be58ad3e21'
  elsif MacOS.version <= :mavericks
    version '1.5.10'
    sha256 '2dd4d1164ced9c6ff431eb99db12e46faa10747c7753ed3889d6df493ee096a5'
  elsif MacOS.version <= :yosemite
    version '1.6.7'
    sha256 'c96175ef35aae6409f760e6c1f70e7cc47d45ab2b769c3238b4a4d979d13756b'
  elsif MacOS.version <= :el_capitan
    version '1.7.3'
    sha256 '24fa5ff0a5903c0eb07cd58a15292e3adab97ea0823f304241dc4187f9252ffc'
  else
    version '1.7.7'
    sha256 'f76825d4cb36aef8c680c9f46d09d6be6d14b3622e59d82496781760548d3366'
  end

  # github.com/IngmarStein/Monolingual was verified as official when first introduced to the cask
  url "https://github.com/IngmarStein/Monolingual/releases/download/v#{version}/Monolingual-#{version}.dmg"
  appcast 'https://github.com/IngmarStein/Monolingual/releases.atom',
          checkpoint: '4b69ae3f7e5bec46643887668be5a0db76fae14e92b2eb34ffb8f25a5263e90a'
  name 'Monolingual'
  homepage 'https://ingmarstein.github.io/Monolingual/'

  app 'Monolingual.app'
end
