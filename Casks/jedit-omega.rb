cask 'jedit-omega' do
  version '2.01'
  sha256 '2e9faaceb7117588eb5b992fed968db2b18bfa498d557d762556dcb882bc5363'

  # artman21.co.jp was verified as official when first introduced to the cask
  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg"
  name 'Jedit Ω'
  homepage 'http://www.artman21.com/en/jeditOmega/'

  app 'Jedit Ω.app'
end
