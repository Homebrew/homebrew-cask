cask 'fox' do
  version '1.8.2'
  sha256 '9d44fa0a9b53928d4087db0c40384dec497b635c938a13cfce84e2f5bf0bc704'

  url "https://www.fox.one/build/Fox-#{version}.dmg"
  name 'Fox'
  homepage 'https://www.fox.one/'

  app 'Fox.app'
end
