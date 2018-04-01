cask 'qldds' do
  version '1.32'
  sha256 '790e28919fe353834a85d3418bfd91583e593fe1aacf556e0481215e449568a8'

  url "https://github.com/Marginal/QLdds/releases/download/rel-#{version.no_dots}/QLdds_#{version.no_dots}.pkg"
  appcast 'https://github.com/Marginal/QLdds/releases.atom',
          checkpoint: 'e3b021c381331a745d5192f8a406093bbbd06643bb6d6341ccb35c922fefcda6'
  name 'QuickLook DDS'
  homepage 'https://github.com/Marginal/QLdds'

  pkg "QLdds_#{version.no_dots}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qldds'
end
