cask :v1 => 'mindnode-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.mindnode.com/download/MindNodePro.zip'
  appcast 'https://www.mindnode.com/softwareupdate/mindnodepro.xml'
  name 'MindNode Pro'
  homepage 'https://mindnode.com/'
  license :commercial

  app 'MindNode Pro.app'
end
