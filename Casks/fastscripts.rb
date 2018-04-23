cask 'fastscripts' do
  version '2.6.12'
  sha256 '591b2d6808b4bdc4d770ebb16ec2ded06b9b1fa1463bfe3296ad1503533e0959'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php',
          checkpoint: 'a3c8821c03d51b36b0adda5a2e030dc27d052180e99c52e5b7bdae1d2bca1b62'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  app 'FastScripts.app'
end
