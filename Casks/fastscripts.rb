cask 'fastscripts' do
  version '2.6.12'
  sha256 '8a5d218d2b0d031ada8c5e7a5b334f09747f3ddcc9de49e9108b95b2d5ca8cde'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php',
          checkpoint: 'a3c8821c03d51b36b0adda5a2e030dc27d052180e99c52e5b7bdae1d2bca1b62'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'

  app 'FastScripts.app'
end
