class PastebotsyncPane < Cask
  version :latest
  sha256 :no_check

  url 'http://tapbots.net/pastebot/PastebotSync.dmg'
  homepage 'http://tapbots.com/software/pastebot/'
  license :unknown

  prefpane 'PastebotSync.prefPane'
end
