cask 'electrum' do
  version '2.7.12'
  sha256 '9fc9866422782eea874e5bae357216850a5b4250f6989fcb6bb8376359b93686'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
