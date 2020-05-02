cask 'fujifilm-x-raw-studio' do
  version '1.9.0,r3z1pz9e'
  sha256 '5d8440f5e884f37d4aac0f3a05918f55502e59a0eeadc9d23624864e4b93790b'

  url "https://dl.fujifilm-x.com/support/software/x-raw-studio-mac#{version.before_comma.no_dots}-#{version.after_comma}/XRawStudio#{version.before_comma.no_dots}.dmg"
  name 'FUJIFILM X RAW STUDIO'
  homepage 'https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/'

  depends_on macos: '>= :sierra'

  app 'FUJIFILM X RAW STUDIO.app'

  uninstall quit: 'com.fujifilm.denji.X-RAW-STUDIO'

  zap trash: [
               '~/Library/Application Support/com.fujifilm.denji',
               '~/Library/Preferences/com.fujifilm.denji.X-RAW-STUDIO.plist',
               '~/Library/Saved Application State/com.fujifilm.denji.X-RAW-STUDIO.savedState/',
             ]
end
