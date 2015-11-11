cask :v1 => 'extrabuildphase' do
  version '0.2'
  sha256 '3d5033e2c63e7d46d1c63ee25142c5448018f5af1e0ee498330ddcdff1970e84'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase-#{version}.pkg"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'
  license :mit

  pkg "ExtraBuildPhase-#{version}.pkg"
  uninstall :pkgutil => 'io.github.norio-nomura.ExtraBuildPhase'
end
