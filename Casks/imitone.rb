cask 'imitone' do
  version '0.8.1'
  sha256 'ae12d7efe41abc9d1dc1ea3430ced38c85394b364c576b6ce70d900fb7759f4a'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  name 'imitone'
  homepage 'https://imitone.com/'
  license :commercial

  app 'imitone.app'
end
