cask 'blocs' do
  version '2.4.1'
  sha256 'f022bf425eda5e1ff55821eef6deab8ce51a8fc3891d69f89820638c16fdd462'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: 'e469d67b60a6064df706e56c98de6803affeadc8c7f9f0f94520e7eaeb969ebb'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
