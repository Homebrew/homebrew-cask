cask 'droplr' do
  version '5.5.2,220'
  sha256 '098e267ef0142083a2ac8495cfe556480db3a282ba0b4493d731f222b4f675d6'

  url "https://files.droplr.com/apps/mac/Droplr-#{version.after_comma}.zip"
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
