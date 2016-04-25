cask 'detexify' do
  version :latest
  sha256 :no_check

  # dropbox.com/s/8yj6pesvw17v8dd/Detexify.zip was verified as official when first introduced to the cask
  url 'https://www.dropbox.com/s/8yj6pesvw17v8dd/Detexify.zip?dl=1'
  name 'Detexify'
  homepage 'http://detexify.kirelabs.org/classify.html'
  license :commercial

  app 'Detexify.app'
end
