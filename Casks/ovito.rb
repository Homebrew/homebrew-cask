cask 'ovito' do
  version '2.9.0'
  sha256 'c35a52c5cb9e2f081b234cd42b8854e71fa381a79e203547310379303ac4b477'

  url "https://ovito.org/download/#{version}/ovito-#{version}-macos.dmg"
  name 'OVITO'
  homepage 'https://ovito.org/'

  app 'Ovito.app'
end
