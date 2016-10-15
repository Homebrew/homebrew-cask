cask 'electrum' do
  version '2.7.8'
  sha256 '523617ad840ace006839e2ad943382405e4601ace335e6fc3cf404a2b2e8a87b'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc",
      key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
