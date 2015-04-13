cask :v1 => 'syncany' do
  version '0.4.4-alpha'
  sha256 'a3174e873993e130252aa03bfa94c8afd24433945ebfe4f4d61288364676bc90'

  url "https://get.syncany.org/dist/releases/syncany-#{version}-x86_64.app.zip"
  name 'Syncany'
  homepage 'https://syncany.org'
  license :gpl

  app 'Syncany.app'

  zap :delete => '~/.config/syncany'
end
