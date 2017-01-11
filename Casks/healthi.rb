cask 'healthi' do
  version '1.2.0'
  sha256 'c79bc35efbd1e501c6cc4f67241c2e6b3e67cd5fe42c31074ff2f09f78dc7882'

  url "https://github.com/pablopunk/healthi/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi/releases.atom',
          checkpoint: '9dd6a93276771e10e1a37b8c0275a28e23d2eb610cb139bf7bac056e79417666'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi'

  app 'healthi.app'
end
