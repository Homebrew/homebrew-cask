cask 'chocolat' do
  version '3.3.1'
  sha256 '810b34ac39818031418e9273272d6e1b00d284498599a92ec543bcf5f9b925ef'

  url "https://chocolatapp.com/versions/Chocolat_#{version}.zip"
  appcast 'https://chocolatapp.com/userspace/appcast/appcast_alpha.php',
          checkpoint: 'd3b552c92eb4b46f0ff609f207e62251f857ccf2ba2b3aee8c358599c1f1a855'
  name 'Chocolat'
  homepage 'https://chocolatapp.com/'

  app 'Chocolat.app'
end
