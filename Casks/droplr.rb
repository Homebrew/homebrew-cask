cask 'droplr' do
  version '5.6.0,232'
  sha256 '243f69ad61fc5a2656b142df666704f8f1b5455a0f4cad1ddb506731cf4a4189'

  url "https://files.droplr.com/apps/mac/Droplr+#{version.after_comma}.zip"
  appcast 'https://droplr.com/appcast/appcast-sandbox.xml'
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
