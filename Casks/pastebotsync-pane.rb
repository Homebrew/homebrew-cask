cask :v1 => 'pastebotsync-pane' do
  version :latest
  sha256 :no_check

  url 'http://tapbots.net/pastebot/PastebotSync.dmg'
  homepage 'http://tapbots.com/software/pastebot/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'PastebotSync.prefPane'
end
