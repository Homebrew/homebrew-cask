cask 'imitone' do
  version '0.9.2c'
  sha256 '8bbe20c0ddbfb3a583b10e88eb8515174577bdfdc5f345d505fe6ddb2d2d8642'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast 'https://imitone.com/beta/',
          checkpoint: '4abb0b9cec7f92443bf3a509e99a8075d62dbd47a061e0ba0537fec66b67ca5a'
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
