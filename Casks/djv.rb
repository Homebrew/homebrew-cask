cask 'djv' do
  version '1.1.0'
  sha256 'b922fc5d94e57d436779aa912d3f07746f541124149d5f4d8198d4ef0e2e8fd5'

  url "https://downloads.sourceforge.net/djv/djv-stable/#{version}/djv-#{version}-OSX-64.dmg"
  appcast 'https://sourceforge.net/projects/djv/rss?path=/djv-stable',
          checkpoint: '24f84457eb5cde9dd0bf55a6e28e83a7af5c8bcf7d06a014200c37ea7fcc3777'
  name 'DJV Imaging'
  homepage 'http://djv.sourceforge.net'

  app "djv-#{version}-OSX-64.app"
end
