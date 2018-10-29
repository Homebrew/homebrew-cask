cask 'mailmate' do
  version '5523'
  sha256 '3c23876b7a7b94656f2dad7d6476f85f175fc4e9cb8256d479a3ba447676acbe'

  # mailmate-app.com was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast 'https://updates.mailmate-app.com/10.13/release'
  name 'MailMate'
  homepage 'https://freron.com/'

  auto_updates true

  app 'MailMate.app'
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
