class Mailmate < Cask
  url 'http://dl.mailmate-app.com/MailMate.tbz'
  homepage 'http://freron.com/'
  version 'latest'
  no_checksum
  link 'MailMate.app'
  binary 'MailMate.app/Contents/Resources/emate'
  caveats do
    files_in_usr_local
  end
end
