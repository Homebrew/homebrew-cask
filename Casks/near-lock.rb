cask :v1 => 'near-lock' do
  version :latest
  sha256 :no_check

  url 'http://nearlock.me/downloads/nearlock.dmg'
  name 'Near Lock'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          :sha256 => '47bb4ce1aa116a19412d6ff9b33615f8706140b11e5439dc0b2e63e121b1acde'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
