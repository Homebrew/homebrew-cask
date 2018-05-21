cask '0-ad' do
  version '0.0.23-alpha'
  sha256 'c9de859ad0e2cc6b1085803d1fc107094423520e16c55b32175f43df11475441'

  # wildfiregames.com was verified as official when first introduced to the cask
  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  appcast 'https://play0ad.com/download/mac/',
          checkpoint: '17f0f8823e6f642b18f7438471894c8d53a6d4d7c5eeaaf7d075f69530c0cfc0'
  name '0 A.D.'
  homepage 'https://play0ad.com/'

  depends_on macos: '>= :mountain_lion'

  app '0 A.D..app'
end
