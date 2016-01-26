cask 'mailmate' do
  version :latest
  sha256 :no_check

  # app.com is the official download host per the vendor homepage
  url 'http://dl.mailmate-app.com/MailMate.tbz'
  name 'MailMate'
  homepage 'http://freron.com/'
  license :commercial

  app 'MailMate.app'
  binary 'MailMate.app/Contents/Resources/emate'

  caveats do
    files_in_usr_local
  end
end
