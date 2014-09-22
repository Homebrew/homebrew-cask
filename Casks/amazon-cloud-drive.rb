class AmazonCloudDrive < Cask
  version :latest
  sha256 :no_check

  url 'https://d29x207vrinatv.cloudfront.net/AmazonCloudDrive.dmg'
  appcast 'https://d29x207vrinatv.cloudfront.net/Sync/Mac/20130517-2.1/CloudDriveInstallerAppcast.xml'
  homepage 'https://www.amazon.com/clouddrive'

  app 'Amazon Cloud Drive.app'
end
