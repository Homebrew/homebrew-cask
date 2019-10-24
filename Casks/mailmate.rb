cask 'mailmate' do
  version '5655'
  sha256 '266e6a68168493f0e9e276660b2398e27ef70b331236a9ce1c63b5a9143b0bb7'

  # mailmate-app.com was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast 'https://updates.mailmate-app.com/10.14/release'
  name 'MailMate'
  homepage 'https://freron.com/'

  auto_updates true

  app 'MailMate.app'
  binary 'MailMate.app/Contents/Resources/emate'
end
