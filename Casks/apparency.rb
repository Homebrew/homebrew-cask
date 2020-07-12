cask 'apparency' do
  version '1.0'
  sha256 '8c1c6369e54f6f5a92e0927b98426f8e952e2aefbf8eabfc926e2b875b38fa9d'

  url 'https://mothersruin.com/software/downloads/Apparency.dmg'
  appcast 'https://www.mothersruin.com/software/Apparency/data/ApparencyVersionInfo.plist'
  name 'Apparency'
  homepage 'https://www.mothersruin.com/software/Apparency/'

  depends_on macos: '>= :mojave'

  app 'Apparency.app'

  zap trash: [
               '~/Library/Application Scripts/com.mothersruin.Apparency',
               '~/Library/Application Scripts/com.mothersruin.Apparency.QLPreviewExtension',
               '~/Library/Containers/com.mothersruin.Apparency',
               '~/Library/Containers/com.mothersruin.Apparency.QLPreviewExtension',
             ]
end
