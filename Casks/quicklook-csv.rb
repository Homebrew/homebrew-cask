cask 'quicklook-csv' do
  version '1.3'
  sha256 'e052e89f8003aed08bb2058e3fb3335ac0a5cdaa0171bfb23b762976e095ef5b'

  url "https://github.com/p2/quicklook-csv/releases/download/#{version}/QuickLookCSV-#{version}.dmg"
  appcast 'https://github.com/p2/quicklook-csv/releases.atom',
          checkpoint: 'f86d74a21377ce2e0e23127f7f157f38fd8e98bac78e3cd3d85d00d9b4ed2c41'
  name 'QuickLookCSV'
  homepage 'https://github.com/p2/quicklook-csv'
  license :oss

  qlplugin 'QuickLookCSV.qlgenerator'
end
