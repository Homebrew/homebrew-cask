cask 'droplr' do
  version '5.6.2,235'
  sha256 '20313d3b60a42fa94ef014ba09d0cc071bbae0022efc72f79be61fba93f088e6'

  url "https://files.droplr.com/apps/mac/Droplr+#{version.after_comma}.zip"
  appcast 'https://droplr.com/appcast/appcast-sandbox.xml'
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Droplr.app'
end
