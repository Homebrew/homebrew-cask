cask 'freesmug-chromium' do
  version '66.0.3359.139'
  sha256 'b500a59c6f14075c2900f0bb12cf41268cead077dff97dd6d353dee4457218fa'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'e6adefc3e280428e0457998a26a55a570ba6e5b87f3aba67dc19fa10c779acb0'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
