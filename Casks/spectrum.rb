cask 'spectrum' do
  version :latest
  sha256 :no_check

  url 'https://github.com/withspectrum/spectrum/releases/download/desktop-v1.0.1/Spectrum-1.0.1-mac.zip'
  name 'Spectrum'
  homepage 'http://spectrum.chat'

  app 'Spectrum.app'
end
