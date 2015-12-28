cask 'fastscripts' do
  version '2.6.9'
  sha256 '4b34c5fca7c0478480b6506d66b5969eebc4fcc099e7fa6b1e198f4d172c9ee8'

  url "https://www.red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast 'https://red-sweater.com/fastscripts/appcast2.php',
          :sha256 => 'acea39d17b8ea31b829580e079364525869a3ac10b958354cd0914a6df711f18'
  name 'FastScripts'
  homepage 'https://red-sweater.com/fastscripts/'
  license :freemium

  app 'FastScripts.app'
end
