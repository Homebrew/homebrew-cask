cask 'mailmate' do
  version '5671'
  sha256 '5afed63061f97f255394399c997984eacdd4148dd344013f3ab355d1620688d3'

  # mailmate-app.com/ was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast 'https://updates.mailmate-app.com/10.14/release'
  name 'MailMate'
  homepage 'https://freron.com/'

  auto_updates true

  app 'MailMate.app'
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
