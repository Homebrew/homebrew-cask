cask 'leksah' do
  version '0.15.2.0-ghc-7.10.3'
  sha256 'f94fff34c37367ddd5081e9f8561f1579b2875840e80d647dd6d7af469c542bf'

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  name 'Leksah'
  homepage 'http://leksah.org/'

  app 'Leksah.app'
end
