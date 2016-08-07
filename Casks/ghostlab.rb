cask 'ghostlab' do
  version '2.1.2'
  sha256 'ce2a1a6189fe226c59cd923717a5ae6f71621fcdd8a57e28f70efaaaf81f8d13'

  url "https://awesome.vanamco.com/Ghostlab2/update/packages/mac/Ghostlab2-#{version}.zip"
  appcast 'https://awesome.vanamco.com/Ghostlab2/update/ghostlab2-cast.xml?vco=trkd',
          checkpoint: '243c77ba04b68fb6af58aed4467f7664d5bf79e88eff4726c48ca157d98a7490'
  name 'Ghostlab'
  homepage 'https://vanamco.com/ghostlab/'
  license :commercial

  app 'Ghostlab2.app'
end
