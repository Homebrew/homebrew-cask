cask 'engine-prime' do
  version '1.3.3'
  sha256 '4dc44015c44b19eb0cbcc0b4d41cea7d33c22a6b6becfc4bf9bf85d85c6f056a'

  # inmusicbrands.com was verified as official when first introduced to the cask
  url "https://cdn.inmusicbrands.com/denondj/EnginePrime/Engine_Prime_#{version}_Setup.dmg"
  name 'Engine Prime'
  homepage 'https://www.denondj.com/engineprime'

  pkg "Engine Prime_#{version}_Setup.pkg"

  uninstall pkgutil: 'com.airmusictechnology.engineprime.application'

  zap trash: '~/Music/Engine Library'
end
