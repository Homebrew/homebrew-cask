cask 'jedit-omega' do
  version '1.20'
  sha256 '2a9d993126e9dd4163622d188079c1122921e7c3fb48a5a22de81a5088a6c72a'

  # artman21.co.jp was verified as official when first introduced to the cask
  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg"
  name 'Jedit Ω'
  homepage 'http://www.artman21.com/en/jeditOmega/'

  app 'Jedit Ω.app'
end
