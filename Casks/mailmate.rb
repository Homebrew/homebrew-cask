cask 'mailmate' do
  version '5634'
  sha256 'bd10785f49102eca29f8f2e31ca08f406c0bf5004b617b42730ebcc11ab1c9cc'

  # mailmate-app.com was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast 'https://updates.mailmate-app.com/10.14/release'
  name 'MailMate'
  homepage 'https://freron.com/'

  auto_updates true

  app 'MailMate.app'
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
