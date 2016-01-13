cask 'mindnode-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.mindnode.com/download/MindNodePro.zip'
  appcast 'https://www.mindnode.com/softwareupdate/mindnodepro.xml',
          :checkpoint => '3de4f9ae0f4f5879d1c03d9cc90164ae7799b534c368b0e5af0aecefe04b9ed9'
  name 'MindNode Pro'
  homepage 'https://mindnode.com/'
  license :commercial

  app 'MindNode Pro.app'
end
