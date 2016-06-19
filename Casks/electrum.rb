cask 'electrum' do
  version '2.6.4'
  sha256 'ee0f3f553e4b118b69246c43d4dd7afe2a0bd6876c255e74dec1814b9521e6ec'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl
  gpg "#{url}.asc",
      key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
