cask :v1 => 'mindnode-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.mindnode.com/download/MindNodePro.zip'
  appcast 'https://www.mindnode.com/softwareupdate/mindnodepro.xml'
  homepage 'https://mindnode.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MindNode Pro.app'
end
