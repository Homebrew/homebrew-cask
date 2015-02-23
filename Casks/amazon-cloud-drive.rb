cask :v1 => 'amazon-cloud-drive' do
  version 'mac'
  sha256 'ef47650da13dbbef227d985d1e9ae06435dd6319'

  url "https://d29x207vrinatv.cloudfront.net/#{version}/AmazonCloudDriveInstaller.dmg"
  name 'Amazon Cloud Drive App'
  homepage 'http://www.amazon.com/clouddrive'
  license :gratis

  app 'Amazon Cloud Drive App.app'
end
