cask 'eaglefiler' do
  version '1.8.14'
  sha256 '1040bb6388bb689227eaad5ccaa9f4f2e1961b029a8f4f8eb1f211c3a993c150'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
