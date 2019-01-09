cask 'eaglefiler' do
  version '1.8.5'
  sha256 '26a5e0f4270fa83bd55a3a60c6f64308c23cc2ceb8da4e402da514008e940c31'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
