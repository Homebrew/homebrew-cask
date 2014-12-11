cask :v1 => 'pastebotsync-pane' do
  version :latest
  sha256 :no_check

  url 'http://tapbots.net/pastebot/PastebotSync.dmg'
  homepage 'http://tapbots.com/software/pastebot/'
  license :unknown    # todo: improve this machine-generated value

  prefpane 'PastebotSync.prefPane'
end
