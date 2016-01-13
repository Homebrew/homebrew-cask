cask 'qdesktop' do
  version '0.1.1'
  sha256 '1eddd3513cca892fb8e53452d79d4589ef5b1e3cd885a1f52748b6df64588094'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/qvacua/qvacua/downloads/Qdesktop-#{version}.zip"
  appcast 'http://qvacua.com/qdesktop/appcast.xml',
          :sha256 => '10997fcb60591b4d1e6357c7a1c322004d3181927ce4f6e9aa7b7e8e573a9fc3'
  name 'Qdesktop'
  homepage 'http://qvacua.com'
  license :gpl

  app 'Qdesktop.app'
end
