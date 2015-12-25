cask 'mindnode-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.mindnode.com/download/MindNodePro.zip'
  appcast 'https://www.mindnode.com/softwareupdate/mindnodepro.xml',
          :sha256 => '8f435aeb6632be36252b7f47a2b1019528a5227f2008c4ae5940c6162919a68a'
  name 'MindNode Pro'
  homepage 'https://mindnode.com/'
  license :commercial

  app 'MindNode Pro.app'
end
