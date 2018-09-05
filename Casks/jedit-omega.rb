cask 'jedit-omega' do
  version '1.24'
  sha256 '99ebefee3f7d805b8386f84a7ac77b8f021071fcce9dab0d3d5b7cd26128cd72'

  # artman21.co.jp was verified as official when first introduced to the cask
  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg"
  name 'Jedit Ω'
  homepage 'http://www.artman21.com/en/jeditOmega/'

  app 'Jedit Ω.app'
end
