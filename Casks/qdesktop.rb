cask :v1 => 'qdesktop' do
  version '0.1.1'
  sha256 '1eddd3513cca892fb8e53452d79d4589ef5b1e3cd885a1f52748b6df64588094'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/qvacua/qvacua/downloads/Qdesktop-#{version}.zip"
  appcast 'http://qvacua.com/qdesktop/appcast.xml',
          :sha256 => '9714a19fae1e50cfdc06a1f300dae791d400b4c64a0f679b29d633ea8a59b46b'
  name 'Qdesktop'
  homepage 'http://qvacua.com'
  license :gpl

  app 'Qdesktop.app'
end
