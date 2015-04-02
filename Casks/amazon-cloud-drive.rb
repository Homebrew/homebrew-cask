cask :v1 => 'amazon-cloud-drive' do
  version 'mac'
  sha256 '8bcc3aa1f558fd96922eae0356d749dd347d3a35b211e25f199466ebc185fc38'

  url "https://d29x207vrinatv.cloudfront.net/#{version}/AmazonCloudDriveInstaller.dmg"
  name 'Amazon Cloud Drive App'
  homepage 'https://www.amazon.com/clouddrive/home/'
  license :gratis

  app 'Amazon Cloud Drive App.app'
end
