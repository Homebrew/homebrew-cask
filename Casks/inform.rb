cask 'inform' do
  version '6M62'
  sha256 'e3c9cbbd7fd3933e7585a0a89596c0c736e89d8bb5a9f297edfd6ad7d0f97c8c'

  url "http://inform7.com/download/content/#{version}/I7-#{version}-OSX.dmg"
  name 'Inform'
  homepage 'http://inform7.com/'
  license :oss

  app 'Inform.app'
end
