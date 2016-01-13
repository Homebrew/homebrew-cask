cask 'macgdbp' do
  version '1.5'
  sha256 '90697835c77c0a294cea7aec62276fbf6920763968e5c77a0791199c7d718744'

  url "https://www.bluestatic.org/downloads/macgdbp/macgdbp-#{version}.zip"
  appcast 'https://www.bluestatic.org/versioncast.php/macgdbp',
          :checkpoint => '169f0f39b0e4998de503623724fd81eca28c6615b13840dee9e9719e2e297f35'
  name 'MacGDBp'
  homepage 'https://www.bluestatic.org/software/macgdbp/'
  license :gpl

  app 'MacGDBp.app'
end
