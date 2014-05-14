class AmazonCloudDrive < Cask
  url 'https://d29x207vrinatv.cloudfront.net/AmazonCloudDrive.dmg'
  appcast 'https://d29x207vrinatv.cloudfront.net/Sync/Mac/20130517-2.1/CloudDriveInstallerAppcast.xml'
  homepage 'https://www.amazon.com/clouddrive'
  version 'latest'
  sha256 :no_check
  link 'Amazon Cloud Drive.app'
end
