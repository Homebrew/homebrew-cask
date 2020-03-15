cask 'engine-prime' do
  version '1.3.4'
  sha256 '6d2a9f9387951b242a03b842ec00aa7069f263e04b0466885b9c6d4759d0a35a'

  # inmusicbrands.com was verified as official when first introduced to the cask
  url "https://cdn.inmusicbrands.com/denondj/EnginePrime/Engine_Prime_#{version}_Setup.dmg"
  name 'Engine Prime'
  homepage 'https://www.denondj.com/engineprime'

  pkg "Engine Prime_#{version}_Setup.pkg"

  uninstall pkgutil: 'com.airmusictechnology.engineprime.application'

  zap trash: '~/Music/Engine Library'
end
