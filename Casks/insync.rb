cask 'insync' do
  version '1.5.4.37362'
  sha256 '53fef6aedba15ee0ade8b676a870dc8781e4b0e5863460cf3a638ba64490a2d5'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
