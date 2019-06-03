cask 'jedit-omega' do
  if MacOS.version <= :el_capitan
    version '1.32'
    sha256 '251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9'
  else
    version '2.13'
    sha256 '288e08a02129c1ed3b4acfcb1343b7e115f4943fe0778b435ebc7bd15afd4e9b'
  end

  # artman21.co.jp was verified as official when first introduced to the cask
  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg"
  appcast 'http://www.artman21.com/en/jeditOmega/history.html'
  name 'Jedit Ω'
  homepage 'http://www.artman21.com/en/jeditOmega/'

  app 'Jedit Ω.app'
end
