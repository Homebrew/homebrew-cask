cask 'eaglefiler' do
  version '1.7.6'
  sha256 'a22cefbe1a8782bf2ade632928cf70cada5731fb231bb8b9acf5c0fc30e1285c'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
