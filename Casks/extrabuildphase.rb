cask :v1 => 'extrabuildphase' do
  version '0.1'
  sha256 'a3701bddf73ba49277954eb21d6344b96f143fc90c55991bb2c8f65bc24916bb'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase-#{version}.pkg"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'
  license :mit

  pkg "ExtraBuildPhase-#{version}.pkg"
  uninstall :pkgutil => 'io.github.norio-nomura.ExtraBuildPhase'
end
