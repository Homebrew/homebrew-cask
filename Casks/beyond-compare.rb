class BeyondCompare < Cask
  version '4.0.0.18847'
  sha256 'cb9987b62ac68a2493b7bc5678125fbf1b8919796bc82718ddd23958768fd457'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  homepage 'http://www.scootersoftware.com/index.php'
  license :commercial

  app 'Beyond Compare.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.ScooterSoftware.BeyondCompare', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
