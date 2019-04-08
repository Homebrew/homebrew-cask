cask 'systhist' do
  version '1.8,2019.04'
  sha256 '22c9fdc401ab521fc7e2d388174ec8a474cbd5dccfbf18f4c375b5e8dadb81a5'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/systhist#{version.before_comma.major}#{version.before_comma.minor}.zip"
  name 'Syst Hist'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "systhist#{version.before_comma.major}#{version.before_comma.minor}/SystHist.app"
end
