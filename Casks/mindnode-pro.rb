cask 'mindnode-pro' do
  version '1.11.4'
  sha256 'db8b1f6266f343c3ad85d6733cdce00138ecd044200073a5616d040bd594794a'

  url 'https://www.mindnode.com/download/MindNodePro.zip'
  appcast 'https://mindnode.com/softwareupdate/mindnodepro.xml',
          checkpoint: '8aadfe1189a1e55de8ff9ec248dcfb73999fdfdb8befe94a901fedc8d2647765'
  name 'MindNode Pro'
  homepage 'https://mindnode.com/'
  license :commercial

  app 'MindNode Pro.app'
end
