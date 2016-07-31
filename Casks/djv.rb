cask 'djv' do
  version '1.1.0'
  sha256 'b922fc5d94e57d436779aa912d3f07746f541124149d5f4d8198d4ef0e2e8fd5'

  url "https://downloads.sourceforge.net/djv/djv-stable/#{version}/djv-#{version}-OSX-64.dmg"
  appcast 'https://sourceforge.net/projects/djv/rss',
          checkpoint: '9333f7b5a3bca65e1dba57cd0cc2a6a0952e9739f14f79c04c08feaaa158b996'
  name 'DJV Imaging'
  homepage 'http://djv.sourceforge.net'
  license :bsd

  app "djv-#{version}-OSX-64.app"
end
