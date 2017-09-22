cask 'freesmug-chromium' do
  version '61.0.3163.100'
  sha256 '976cb680c54fb009565625a31884ccf0995e12a0d2c2cacfdfc842c88e08261a'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'e6b10b79fb3bb3351d198359fc2b544398a17746611523cdf7efd741ea15e458'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
