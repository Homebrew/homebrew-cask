cask 'dashlane' do
  version '6.1931.0.22241'
  sha256 '771ac47cf80477fd9e59a3be334b5d9141d86434150cf8365607fa22c7f4b8f5'

  # d3mfqat9ni8wb5.cloudfront.net/releases was verified as official when first introduced to the cask
  url "https://d3mfqat9ni8wb5.cloudfront.net/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?format=json&os=OS_X_10_14_5&target=archive&platform=launcher_macosx'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
