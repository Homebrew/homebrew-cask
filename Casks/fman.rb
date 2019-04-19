cask 'fman' do
  version '1.5.7'
  sha256 'b62d277d19a519048674e0dd822177040cd943d30429ed0efd9d7bf14080615f'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
