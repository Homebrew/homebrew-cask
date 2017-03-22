cask 'mailmate' do
  version :latest
  sha256 :no_check

  # mailmate-app.com was verified as official when first introduced to the cask
  url 'http://dl.mailmate-app.com/MailMate.tbz'
  name 'MailMate'
  homepage 'https://freron.com/'

  app 'MailMate.app'
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
