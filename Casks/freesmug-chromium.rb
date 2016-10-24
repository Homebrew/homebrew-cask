cask 'freesmug-chromium' do
  version '54.0.2840.71'
  sha256 'f64cf586d017d737288e29556ccbf6c69d8002fcfdf96e0d48a3a981111e4f59'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '53c130d3a82eb72803759b753728e20bdbce23b365a43a18da2abeecc9989604'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
