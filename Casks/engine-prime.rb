cask 'engine-prime' do
  version '1.3.1'
  sha256 '626a9c4c3bc3f2e21f2e121d11739cd414442a1acb8d5c20c73621cf63e11f03'

  # inmusicbrands.com was verified as official when first introduced to the cask
  url "https://cdn.inmusicbrands.com/denondj/EnginePrime/Engine_Prime_#{version}_Setup.dmg"
  name 'Engine Prime'
  homepage 'https://www.denondj.com/engineprime'

  pkg "Engine Prime_#{version}_Setup.pkg"

  uninstall pkgutil: 'com.airmusictechnology.engineprime.application'

  zap trash: '~/Music/Engine Library'
end
