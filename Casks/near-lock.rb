cask 'near-lock' do
  version '3.5.1'
  sha256 'd65459f0f06f094e9ac83c1aafb2b774889e6485174e56b3a73a34ea8875a810'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          checkpoint: '2f2118e5fcf9de4548cdcf251bfc9425887ebf3e2727e9c8f50a2ed4e5754368'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
