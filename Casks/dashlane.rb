cask 'dashlane' do
  version '6.1927.0.21578'
  sha256 '2fcb3f8d3ab35423430fc39ecd7bf01d876123864adff69723d4d086e06d7cd5'

  # d3mfqat9ni8wb5.cloudfront.net/releases was verified as official when first introduced to the cask
  url "https://d3mfqat9ni8wb5.cloudfront.net/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?format=json&os=OS_X_10_14_5&target=archive&platform=launcher_macosx'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
