cask 'eaglefiler' do
  version '1.7'
  sha256 '400bac07fc8d9699814cbf7bc06b1d36742225ad59d6c12ddab6017780276f60'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
