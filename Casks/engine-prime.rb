cask 'engine-prime' do
  version '1.5.0'
  sha256 'ee4de365448da76640758eb70cbb0af06a99ae9ddb14a9d6d7fa8550ac6713d2'

  # inmusicbrands.com/ was verified as official when first introduced to the cask
  url "https://cdn.inmusicbrands.com/denondj/EnginePrime/15/Engine_Prime_#{version}_Setup.dmg"
  name 'Engine Prime'
  homepage 'https://www.denondj.com/engineprime'

  pkg "Engine Prime_#{version}_Setup.pkg"

  uninstall pkgutil: 'com.airmusictechnology.engineprime.application'

  zap trash: '~/Music/Engine Library'
end
