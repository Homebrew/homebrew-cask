cask 'syncany' do
  version '0.4.6-alpha'
  sha256 '6ff3f4eadf716616e4f91402779d77734194071ff191bba4eb2f30352c161f90'

  url "https://get.syncany.org/dist/releases/syncany-#{version}-x86_64.app.zip"
  name 'Syncany'
  homepage 'https://syncany.org'
  license :gpl

  app 'Syncany.app'

  zap delete: '~/.config/syncany'
end
