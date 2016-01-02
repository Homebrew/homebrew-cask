cask 'eaglefiler' do
  version '1.6.5'
  sha256 '1b1c714be59f3e8ea3ed1fd2322672c08d217f8360b61172feeb4ea952f382b7'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'
  license :commercial

  app 'EagleFiler.app'
end
