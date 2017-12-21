cask 'detexify' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/detexify.kirelabs.org was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/detexify.kirelabs.org/Detexify.zip'
  name 'Detexify'
  homepage 'http://detexify.kirelabs.org/classify.html'

  app 'Detexify.app'

  zap trash: '~/Library/Preferences/org.kirelabs.Detexify-Mac.plist'
end
