cask 'loom' do
  version '0.33.2'
  sha256 'cfeac08ea5468a9d392e852c8b664dd2a54db8841c9a0f45d943357a82a23ea1'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
