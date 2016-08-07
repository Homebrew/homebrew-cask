cask 'mailbutler' do
  version :latest
  sha256 :no_check

  url 'https://www.feingeist.io/files/MailButler.zip'
  name 'MailButler'
  homepage 'https://www.feingeist.io/mailbutler/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MailButler.app'
end
