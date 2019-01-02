cask 'jedit-omega' do
  if MacOS.version <= :el_capitan
    version '1.32'
    sha256 '251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9'
  else
    version '2.06'
    sha256 'fdb030e0d1046157f772d3cd6530bea442cb5e4e1f112443e4817ee8cf087701'
  end

  # artman21.co.jp was verified as official when first introduced to the cask
  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg"
  name 'Jedit Ω'
  homepage 'http://www.artman21.com/en/jeditOmega/'

  app 'Jedit Ω.app'
end
