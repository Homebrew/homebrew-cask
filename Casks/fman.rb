cask 'fman' do
  version '1.5.4'
  sha256 'e1c927c2805c235e933f44bbb53c8f63a6c9c7207cafb4368347344bdaa2484a'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
