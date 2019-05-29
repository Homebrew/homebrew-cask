cask 'eaglefiler' do
  version '1.8.7'
  sha256 '1f3711775d6849d919d94f19e4dce191ca5fa42e58632aa389bf74ea232d4a27'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
