cask 'inform' do
  version '6M62'
  sha256 '5302213a92122a98167e8e2994fd465ed3400b16aa571139edc772616e72b8b9'

  url "http://inform7.com/download/content/#{version}/I7-#{version}-OSX.dmg"
  appcast 'http://inform7.com/download/',
          checkpoint: '3fbbfa135f012ac8009b67422e0b98178c630ab2f95f902f1400d98a6149385a'
  name 'Inform'
  homepage 'http://inform7.com/'

  app 'Inform.app'
end
