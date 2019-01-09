cask 'mailmate' do
  version '5579'
  sha256 'addb5af36cf272ad55bb6b27469d1cb3508cc72b251b5c6adf022b30f9bab7ac'

  # mailmate-app.com was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast 'https://updates.mailmate-app.com/10.14/release'
  name 'MailMate'
  homepage 'https://freron.com/'

  auto_updates true

  app 'MailMate.app'
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
