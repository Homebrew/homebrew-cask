cask 'droplr' do
  version '5.5.2,224'
  sha256 '82ac292b2dda6cf3b31490db57b51250680aeeb2c55eb4aa47d9926a6f6eab98'

  url "https://files.droplr.com/apps/mac/Droplr-#{version.after_comma}.zip"
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
