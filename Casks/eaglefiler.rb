cask 'eaglefiler' do
  version '1.8.9'
  sha256 '7a41fc264fcd1a498c4426f1fc4445da2731ac3a593ad8230e466dbbab7527fb'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
