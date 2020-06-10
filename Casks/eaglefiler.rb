cask 'eaglefiler' do
  version '1.8.13'
  sha256 '57bc50bac596a1265afe799daecb698aa8a3c121ccc2965db85e46b839da19fd'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
