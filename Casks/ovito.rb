cask 'ovito' do
  version '2.8.2'
  sha256 'b0baaa0709aec816d87f3877a417f26d289981f60d004d7c894174e4f5b890d6'

  url "https://ovito.org/download/#{version}/ovito-#{version}-macos.dmg"
  name 'OVITO'
  homepage 'https://ovito.org/'

  app 'Ovito.app'
end
