cask 'eaglefiler' do
  version '1.8.2'
  sha256 '75071eb63a590edfba6744b65dacb80db2ebeeb5722e13bab2e6cfacf996dff3'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
