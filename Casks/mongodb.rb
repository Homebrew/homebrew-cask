cask 'mongodb' do
  version '3.2.0-build.1451920358'
  sha256 '5b4660d0f05956a26c92220e72413078d2af1af7bf38809d5398fedde8b0a2e6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          :sha256 => 'e9c23fafe5fb9aa71c79ac97421f207305e05ee5bba7884614cca97edbf65ed9'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'

  zap :delete => [
                   '~/Library/Caches/io.blimp.MongoDB',
                   '~/Library/Preferences/io.blimp.MongoDB.plist',
                 ]
end
