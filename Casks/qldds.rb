cask 'qldds' do
  version '1.31'
  sha256 'f2528c7c0dde9378ab8ba76d164161560a3c6170cd036a165c1231b6579962bc'

  url "https://github.com/Marginal/QLdds/releases/download/rel-#{version.delete('.')}/QLdds_#{version.delete('.')}.pkg"
  appcast 'https://github.com/Marginal/QLdds/releases.atom',
          checkpoint: '181e68ea01116ea45693afbe33962a6b8a453c6e2804c4ab4a1ece9b2f23253b'
  name 'QuickLook DDS'
  homepage 'https://github.com/Marginal/QLdds'
  license :gpl

  pkg "QLdds_#{version.delete('.')}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qldds'
end
