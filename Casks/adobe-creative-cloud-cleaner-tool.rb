cask :v1 => 'adobe-creative-cloud-cleaner-tool' do
  version :latest
  sha256 :no_check

  # macromedia.com is the official download host per the vendor homepage
  url 'https://download.macromedia.com/SupportTools/Cleaner/mac/AdobeCreativeCloudCleanerTool.dmg'
  name 'Adobe Creative Cloud Cleaner Tool'
  homepage 'https://helpx.adobe.com/creative-cloud/kb/cc-cleaner-tool-installation-problems.html'
  license :gratis

  app 'Adobe Creative Cloud Cleaner Tool.app'
end
