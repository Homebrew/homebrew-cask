cask '0ad' do
  version '0.0.22-alpha'
  sha256 '5876856a8641ffe736fc39f9f6472d7e1699c49a3154e35e713a382abc840caa'

  # wildfiregames.com was verified as official when first introduced to the cask
  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  appcast 'https://play0ad.com/download/mac/',
          checkpoint: 'ea7ba45a506e088510719faf62e0b075ee7b049f61dc736aa826e95db1e74d7a'
  name '0 A.D.'
  homepage 'https://play0ad.com/'

  depends_on macos: '>= :lion'

  app '0ad.app'
end
