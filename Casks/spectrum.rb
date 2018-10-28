cask 'spectrum' do
  version :latest
  sha256 :no_check

  # github.com/withspectrum was verified as official when first introduced to the cask
  url 'https://github.com/withspectrum/spectrum/releases/download/desktop-v1.0.1/Spectrum-1.0.1-mac.zip'
  name 'Spectrum'
  homepage 'http://spectrum.chat/'

  app 'Spectrum.app'
end
