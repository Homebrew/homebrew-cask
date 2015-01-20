cask :v1 => 'near-lock' do
  version :latest
  sha256 :no_check

  url 'http://nearlock.me/downloads/nearlock.dmg'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
