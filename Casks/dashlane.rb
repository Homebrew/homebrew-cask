cask 'dashlane' do
  version '6.1933.0.22570'
  sha256 '52deda260a5537c22bb128dff22565adf676604838381ec02e5763b7027c8340'

  # d3mfqat9ni8wb5.cloudfront.net/releases was verified as official when first introduced to the cask
  url "https://d3mfqat9ni8wb5.cloudfront.net/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?format=json&os=OS_X_10_14_5&target=archive&platform=launcher_macosx'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
