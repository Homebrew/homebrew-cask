cask 'drivethrurpg' do
  version '2.0.3.2'
  sha256 'a3cb7400e6f474057ea3045e73eafb63d46c81f130bc37b9fa03f601f21ad9c2'

  url 'https://watermark.drivethrurpg.com/DriveThruRPG-setup-osx.dmg'
  appcast 'https://www.drivethrurpg.com/library_client.php?os=Macintosh'
  name 'DriveThruRPG Library App'
  homepage 'https://www.drivethrurpg.com/library_client.php'

  app 'DriveThruRPG.app'
end
