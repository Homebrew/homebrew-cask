cask 'fastscripts' do
  version '2.6.11'
  sha256 '17f4d185a32112d6d99665beaefec3bcb406fb360069791bbe12f5fa8522ccac'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php',
          checkpoint: '808cf814d4e07c80a26ec4a0a695c5edef8441584ddfff64de86620c8b733364'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  app 'FastScripts.app'
end
