cask :v1 => 'amazon-cloud-drive' do
  version :latest
  sha256 :no_check

  url 'https://d29x207vrinatv.cloudfront.net/AmazonCloudDrive.dmg'
  appcast 'https://d29x207vrinatv.cloudfront.net/Sync/Mac/20130517-2.1/CloudDriveInstallerAppcast.xml'
  homepage 'https://www.amazon.com/clouddrive'
  license :unknown    # todo: improve this machine-generated value

  app 'Amazon Cloud Drive.app'
end
