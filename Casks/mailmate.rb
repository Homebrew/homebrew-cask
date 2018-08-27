cask 'mailmate' do
  version '5509'
  sha256 'b1d5d3c26f8b12c747124e5d3670e0add3db67752fb8877ca36df130b86b60b8'

  # mailmate-app.com was verified as official when first introduced to the cask
  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz"
  appcast 'https://updates.mailmate-app.com/10.13/release'
  name 'MailMate'
  homepage 'https://freron.com/'

  app 'MailMate.app'
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"
end
