cask 'lyn' do
  version '1.8.3'
  sha256 'f76ec277f153766b3be787e3a2a7d355f593cbf9f95653e31b974b36a6d4033e'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '893d026155f21ace185be5b8672cac5a66a3db45d43f861a3e2bfd70a5215c20'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'

  app 'Lyn.app'
end
