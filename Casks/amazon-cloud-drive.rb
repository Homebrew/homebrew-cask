cask :v1 => 'amazon-cloud-drive' do
  version 'mac'
  sha256 '22bca820ff5f13c9bc6c986fffff14bb540534c7d739711ee2cab48845a847b5'

  url "https://d29x207vrinatv.cloudfront.net/#{version}/AmazonCloudDriveInstaller.dmg"
  name 'Amazon Cloud Drive App'
  homepage 'https://www.amazon.com/clouddrive/home/'
  license :gratis

  app 'Amazon Cloud Drive App.app'
end
