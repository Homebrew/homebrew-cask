cask 'pphelper' do
  version '2.3.7'
  sha256 '214366e0679c2df2bd5db78cf289eba9a099a4582b3f7c9882b29ac34eee24cd'

  url 'https://ghost.25pp.com/soft/pp_mac.dmg'
  appcast 'https://liveupdate.25pp.com/macpc/Appcast.xml',
          checkpoint: '4dbd535d15e55337260838cc0a2313af0934e3d6bdf76aa1a9303e3ee0dc0a6b'
  name 'pphelper'
  name 'pp助手'
  homepage 'http://pro.25pp.com/pp_mac_ios'

  app 'pp助手.app'
end
