class KextWizard < Cask
  url 'https://dl.dropboxusercontent.com/u/7085278/Kext_Wizard/KextWizard.zip'
  appcast 'http://dl.dropbox.com/u/7085278/Kext_Wizard/update.xml'
  homepage 'http://www.insanelymac.com/forum/topic/253395-kext-wizard-easy-to-use-kext-installer-and-more/'
  version 'latest'
  sha256 :no_check
  link 'Kext Wizard.app'
end
