cask 'engine-prime' do
  version '1.3.2'
  sha256 '4c810ba6aa94778c97ab26913322665081ba59f8ab771cf96eaee9069cc04377'

  # inmusicbrands.com was verified as official when first introduced to the cask
  url "https://cdn.inmusicbrands.com/denondj/EnginePrime/Engine_Prime_#{version}_Setup.dmg"
  name 'Engine Prime'
  homepage 'https://www.denondj.com/engineprime'

  pkg "Engine Prime_#{version}_Setup.pkg"

  uninstall pkgutil: 'com.airmusictechnology.engineprime.application'

  zap trash: '~/Music/Engine Library'
end
