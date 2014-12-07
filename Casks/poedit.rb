cask :v1 => 'poedit' do

  if MacOS.version < :lion
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'
  else
    version '1.7'
    sha256 'ad94a3781d6c670507194870a9720b69030bc12409a38e182b4cc0bd5b7049c8'
  end

  if MacOS.version < :lion
    url "http://heanet.dl.sourceforge.net/project/poedit/poedit/1.5/poedit-#{version}.dmg"
  else
    url "http://poedit.net/dl/Poedit-#{version}.zip"
  end

  appcast 'http://releases.poedit.net/appcast-osx',
          :sha256 => 'bbaf42f8a2e9754df8a60dfcef724cc6d326d6fd4cc05426c45e3a44e8f0d3dd'
  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
