cask :v1 => 'extrabuildphase' do
  version '0.3'
  sha256 'd4023faf158677b455458cb4ce4267e27907bf790fed29fc8d046099dc477277'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase-#{version}.pkg"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'
  license :mit

  pkg "ExtraBuildPhase-#{version}.pkg"
  uninstall :pkgutil => 'io.github.norio-nomura.ExtraBuildPhase'
end
