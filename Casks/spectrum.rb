cask 'spectrum' do
  version '1.0.1'
  sha256 '230b2315c77252568454b168ccd585e6e177e180567367cdba4fe4e5124b5fc1'

  # github.com/withspectrum/spectrum was verified as official when first introduced to the cask
  url "https://github.com/withspectrum/spectrum/releases/download/desktop-v#{version}/Spectrum-#{version}-mac.zip"
  appcast 'https://github.com/withspectrum/spectrum/releases.atom'
  name 'Spectrum'
  homepage 'http://spectrum.chat/'

  app 'Spectrum.app'
end
