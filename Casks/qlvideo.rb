cask 'qlvideo' do
  version '1.91'
  sha256 'e7d0ab6c79ac1952fafb86ef5012d911c669fd628ca2a3a800aa0aea2a2a0b2e'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom',
          checkpoint: '30f44efbfa877db8d93d21e7eb478b245f11119946a0fe740363fcecff9125e8'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'

  pkg "QLVideo_#{version.no_dots}.pkg"

  uninstall pkgutil:   'uk.org.marginal.qlvideo',
            launchctl: 'uk.org.marginal.qlvideo.mdimporter'
end
