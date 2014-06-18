class MindnodePro < Cask
  url 'https://www.mindnode.com/download/MindNodePro.zip'
  appcast 'https://www.mindnode.com/softwareupdate/mindnodepro.xml'
  homepage 'https://mindnode.com/'
  version 'latest'
  sha256 :no_check
  link 'MindNode Pro.app'
end
