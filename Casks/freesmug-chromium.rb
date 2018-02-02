cask 'freesmug-chromium' do
  version '64.0.3282.140'
  sha256 '963e0bf2a3e6b0d73442952a6162e627965b05ef9a012022e7683531ef15368e'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '9ef7665b33c9cbf1857bdb238a582dfb0efaab36f7dc18c65a23e5dbe85105c1'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
