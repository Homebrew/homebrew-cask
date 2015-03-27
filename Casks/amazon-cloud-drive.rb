cask :v1 => 'amazon-cloud-drive' do
  version 'mac'
  sha256 'ef849cdad1e65cbf225e5d6a2436e4472ddecaedf71f6386ac9859ceef52f20c'

  url "https://d29x207vrinatv.cloudfront.net/#{version}/AmazonCloudDriveInstaller.dmg"
  name 'Amazon Cloud Drive App'
  homepage 'https://www.amazon.com/clouddrive/home/'
  license :gratis

  app 'Amazon Cloud Drive App.app'
end
