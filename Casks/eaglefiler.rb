cask 'eaglefiler' do
  version '1.8.10'
  sha256 '67990c22dbfca831630ecf2c227280d9ef0219cad0cc6544f6a42960664b03b6'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  appcast 'https://c-command.com/eaglefiler/help/version-history'
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
