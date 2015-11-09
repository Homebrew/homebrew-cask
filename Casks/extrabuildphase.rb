cask :v1 => 'extrabuildphase' do
  version '0.1'
  sha256 '6c19111e11dfa1e78489f5cfc0b9f14cd66ee2f3b7a4c346ea6548d69f8995b8'

  url "https://github.com/norio-nomura/ExtraBuildPhase/releases/download/#{version}/ExtraBuildPhase.xcplugin-#{version}.zip"
  appcast 'https://github.com/norio-nomura/ExtraBuildPhase/releases.atom'
  name 'ExtraBuildPhase'
  homepage 'https://github.com/norio-nomura/ExtraBuildPhase'
  license :mit

  xcplugin 'ExtraBuildPhase.xcplugin'
end
