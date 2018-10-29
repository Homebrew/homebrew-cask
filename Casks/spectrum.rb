cask 'spectrum' do
  version '1.0.1'
  sha256 '230b2315c77252568454b168ccd585e6e177e180567367cdba4fe4e5124b5fc'

  # github.com/withspectrum was verified as official when first introduced to the cask
  url 'https://github.com/withspectrum/spectrum/releases/download/desktop-v#{version}/Spectrum-1.0.1-mac.zip'
  name 'Spectrum'
  homepage 'http://spectrum.chat/'
  appcast 'https://github.com/withspectrum/spectrum/releases.atom'

  app 'Spectrum.app'
end
