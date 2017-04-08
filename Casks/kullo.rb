cask 'kullo' do
  version '52.0.0'
  sha256 '9fbc34b21b9ade05cc71373efd38e7d53159224b25eb92e184f056ff2cd0894f'

  url "https://www.kullo.net/download/files/osx/Kullo-#{version}.dmg"
  name 'Kullo'
  homepage 'https://www.kullo.net/'

  depends_on macos: '>= :mavericks'

  app 'Kullo.app'
end
