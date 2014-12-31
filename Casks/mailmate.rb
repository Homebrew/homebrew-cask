cask :v1 => 'mailmate' do
  version :latest
  sha256 :no_check

  url 'http://dl.mailmate-app.com/MailMate.tbz'
  homepage 'http://freron.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MailMate.app'
  binary 'MailMate.app/Contents/Resources/emate'
  caveats do
    files_in_usr_local
  end
end
