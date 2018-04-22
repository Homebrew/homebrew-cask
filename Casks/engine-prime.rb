cask 'engine-prime' do
  version '1.1.1'
  sha256 'ca7a6fbcef446f846c6e4f6c6b243a2d85d90b5f4cd5dcf41f5ffe9a54ba235e'

  # inmusicbrands.com was verified as official when first introduced to the cask
  url "http://cdn.inmusicbrands.com/denondj/EnginePrime/Engine_Prime_#{version}_Setup.dmg"
  name 'Engine Prime'
  homepage 'http://www.denondj.com/engineprime'

  pkg "Engine Prime_#{version}_Setup.pkg"

  uninstall pkgutil: 'com.airmusictechnology.engineprime.application'

  zap trash: '~/Music/Engine Library'
end
