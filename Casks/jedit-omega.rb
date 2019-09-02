cask 'jedit-omega' do
  if MacOS.version <= :el_capitan
    version '1.32'
    sha256 '251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9'
  else
    version '2.17'
    sha256 '0c80605a04c06fa4445ce1a9f91e194844246316cb15a1b76fb31cb3fe83d4cb'
  end

  # artman21.co.jp was verified as official when first introduced to the cask
  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg"
  appcast 'http://www.artman21.com/en/jeditOmega/history.html'
  name 'Jedit Ω'
  homepage 'http://www.artman21.com/en/jeditOmega/'

  app 'Jedit Ω.app'
end
