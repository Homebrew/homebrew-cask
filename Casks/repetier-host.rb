cask 'repetier-host' do
  version '1.0.1'
  sha256 '14e7cb94e9078df23c2b8ac96e559187062b6b159b351cc8c7eb3254cb89a706'

  url "https://download1.repetier.com/files/host-mac/Repetier-Host-Mac_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.repetier.com/updates/rhm/rhm-appcast.xml',
          checkpoint: 'ed6e7e102c9f09b9a6e53b4047779bb31bfd2ba71e47f1528f5f13471ba78492'
  name 'Repetier-Host'
  homepage 'https://www.repetier.com/'

  app 'Repetier-Host Mac.app'
end
