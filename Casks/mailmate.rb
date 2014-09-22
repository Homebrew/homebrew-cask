class Mailmate < Cask
  version :latest
  sha256 :no_check

  url 'http://dl.mailmate-app.com/MailMate.tbz'
  homepage 'http://freron.com/'

  app 'MailMate.app'
  binary 'MailMate.app/Contents/Resources/emate'
  caveats do
    files_in_usr_local
  end
end
