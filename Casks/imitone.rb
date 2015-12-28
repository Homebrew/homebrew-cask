cask 'imitone' do
  version '0.8.0'
  sha256 '965f52c4cb43d0331033b8be3b9578ef46a54e4a3b8eb93feb322bbfc2714eaa'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  name 'imitone'
  homepage 'https://imitone.com/'
  license :commercial

  app 'imitone.app'
end
