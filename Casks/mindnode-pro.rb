cask 'mindnode-pro' do
  version '1.11.4'
  sha256 'db8b1f6266f343c3ad85d6733cdce00138ecd044200073a5616d040bd594794a'

  url 'https://www.mindnode.com/download/MindNodePro.zip'
  appcast 'https://www.mindnode.com/softwareupdate/mindnodepro.xml',
          :checkpoint => 'appcast is probably incorrect, as a non-200 (OK) HTTP response code was returned (301)'
  name 'MindNode Pro'
  homepage 'https://mindnode.com/'
  license :commercial

  app 'MindNode Pro.app'
end
