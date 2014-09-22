class MindnodePro < Cask
  version :latest
  sha256 :no_check

  url 'https://www.mindnode.com/download/MindNodePro.zip'
  appcast 'https://www.mindnode.com/softwareupdate/mindnodepro.xml'
  homepage 'https://mindnode.com/'

  app 'MindNode Pro.app'
end
