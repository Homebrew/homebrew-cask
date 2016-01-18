cask 'fastscripts' do
  version '2.6.9'
  sha256 '4b34c5fca7c0478480b6506d66b5969eebc4fcc099e7fa6b1e198f4d172c9ee8'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php',
          checkpoint: '519d2b2b17a65ed9042990da53d9887be1f9cc05f17c47a7c73ddcd8d9f931dd'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'
  license :freemium

  app 'FastScripts.app'
end
