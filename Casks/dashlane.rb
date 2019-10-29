cask 'dashlane' do
  version '6.1942.0.24426'
  sha256 'c5b37fe0c36d42014a8fde4ce4334833fbf5d6815b37cc2df732dd90a6aaae24'

  # d3mfqat9ni8wb5.cloudfront.net/releases was verified as official when first introduced to the cask
  url "https://d3mfqat9ni8wb5.cloudfront.net/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?format=json&os=OS_X_10_14_5&target=archive&platform=launcher_macosx'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
