cask 'droplr' do
  version '5.6.1,233'
  sha256 '6a1fc57a572a5422f51ba79cc04b39c4315bd1428ee007e3ae7862f2a5484953'

  url "https://files.droplr.com/apps/mac/Droplr+#{version.after_comma}.zip"
  appcast 'https://droplr.com/appcast/appcast-sandbox.xml'
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
