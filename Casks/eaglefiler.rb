cask 'eaglefiler' do
  version '1.8.11'
  sha256 'f423884234ea93ac70e32debb1c53b42bb5d55ef12f90f2df42654ba763b0c47'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
