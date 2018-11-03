cask 'mailmate' do
  version '5552'
  sha256 'd3f566de83759eab01b20725ba91b1432915afa23e76277748efdc4ffe1021ed'

  # mailmate-app.com was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast 'https://updates.mailmate-app.com/beta_release_notes'
  name 'MailMate'
  homepage 'https://freron.com/'

  auto_updates true

  app 'MailMate.app'
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
