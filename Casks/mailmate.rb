cask 'mailmate' do
  version '5568'
  sha256 'e089e64cfa2192ebf3135bdff61d1bd63fb7f9077d4074c2183fac1584728b32'

  # mailmate-app.com was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast 'https://updates.mailmate-app.com/beta_release_notes'
  name 'MailMate'
  homepage 'https://freron.com/'

  auto_updates true

  app 'MailMate.app'
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
