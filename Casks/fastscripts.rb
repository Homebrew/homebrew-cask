cask 'fastscripts' do
  version '2.6.9'
  sha256 '4b34c5fca7c0478480b6506d66b5969eebc4fcc099e7fa6b1e198f4d172c9ee8'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php',
          :checkpoint => '13b0e9e7cb6b6aba3584b924316b3a8689bfc5bc51bd53af1fb94088c587edf2'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'
  license :freemium

  app 'FastScripts.app'
end
