cask 'inform' do
  version '6M62'
  sha256 '812f260e80fd5cf2ce2918d089b574b67f1dfe9082532c614d47ff98526ae389'

  url "http://inform7.com/download/content/#{version}/I7-#{version}-OSX.dmg"
  appcast 'http://inform7.com/download/',
          checkpoint: 'a7577ce030498d1d83c20ad957fcbb0b5129d7bb20158208eecaf7125d5de5d7'
  name 'Inform'
  homepage 'http://inform7.com/'

  app 'Inform.app'
end
