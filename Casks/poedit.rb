cask :v1 => 'poedit' do

  if MacOS.release <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'
    url "http://heanet.dl.sourceforge.net/project/poedit/poedit/#{version.sub(/.\d+$/,'')}/poedit-#{version}.dmg"
  else
    version '1.7'
    sha256 'ad94a3781d6c670507194870a9720b69030bc12409a38e182b4cc0bd5b7049c8'
    url "http://poedit.net/dl/Poedit-#{version}.zip"
    appcast 'http://releases.poedit.net/appcast-osx',
            :sha256 => 'bbaf42f8a2e9754df8a60dfcef724cc6d326d6fd4cc05426c45e3a44e8f0d3dd'
  end

  homepage 'http://www.poedit.net'
  license :mit

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
