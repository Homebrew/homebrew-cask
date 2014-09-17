class AndroidFileTransfer < Cask
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/androidjumper/mtp/current/androidfiletransfer.dmg'
  homepage 'http://www.android.com/filetransfer/'

  app 'Android File Transfer.app'
end
