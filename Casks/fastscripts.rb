cask 'fastscripts' do
  version '2.6.13'
  sha256 '0324cf741f989e9f224259af2b79fcb163fcedcf45e790f8ccb747ffa1971b6c'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php',
          checkpoint: '1a6ece35fbf0c62b743bec5639d868e9a5ac715eaf7c9c88d71b7cb10e22ebe4'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  app 'FastScripts.app'
end
