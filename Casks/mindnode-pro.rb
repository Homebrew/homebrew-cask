cask :v1 => 'mindnode-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.mindnode.com/download/MindNodePro.zip'
  appcast 'https://www.mindnode.com/softwareupdate/mindnodepro.xml'
  homepage 'https://mindnode.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'MindNode Pro.app'
end
