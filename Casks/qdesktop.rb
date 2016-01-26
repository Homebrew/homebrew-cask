cask 'qdesktop' do
  version '0.1.1'
  sha256 '1eddd3513cca892fb8e53452d79d4589ef5b1e3cd885a1f52748b6df64588094'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/qvacua/qvacua/downloads/Qdesktop-#{version}.zip"
  appcast 'http://qvacua.com/qdesktop/appcast.xml',
          checkpoint: '0b0de69503c4c5c113458705f0ca13e91bc87c0ca91e8a395ca25d5d80d39384'
  name 'Qdesktop'
  homepage 'http://qvacua.com'
  license :gpl

  app 'Qdesktop.app'
end
