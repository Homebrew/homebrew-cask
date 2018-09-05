cask 'adobe-creative-cloud-cleaner-tool' do
  version :latest
  sha256 :no_check

  # macromedia.com was verified as official when first introduced to the cask
  url 'https://download.macromedia.com/SupportTools/Cleaner/mac/AdobeCreativeCloudCleanerTool.dmg'
  name 'Adobe Creative Cloud Cleaner Tool'
  homepage 'https://helpx.adobe.com/creative-cloud/kb/cc-cleaner-tool-installation-problems.html'

  app 'Adobe Creative Cloud Cleaner Tool.app'
end
