cask 'pastebotsync-pane' do
  version :latest
  sha256 :no_check

  # tapbots.net is the official download host per the vendor homepage
  url 'https://tapbots.net/pastebot/PastebotSync.dmg'
  name 'Pastebot Sync'
  homepage 'http://tapbots.com/software/pastebot/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'PastebotSync.prefPane'
end
