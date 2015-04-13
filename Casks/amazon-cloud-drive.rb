cask :v1 => 'amazon-cloud-drive' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d29x207vrinatv.cloudfront.net/mac/AmazonCloudDriveInstaller.dmg'
  name 'Amazon Cloud Drive App'
  homepage 'https://www.amazon.com/clouddrive/home/'
  license :gratis

  app 'Amazon Cloud Drive App.app'
end
