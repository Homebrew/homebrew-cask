cask :v1 => 'focus' do
  version '1.4.1'
  sha256 '4abacd3895b56c41753cbf7c4e26a490f8dfe6dae9e3871e48f6f894d33488d0'

  url "https://heyfocus.com/releases/Focus-#{version}.zip"
  appcast 'https://heyfocus.com/appcast.xml',
          :sha256 => 'e74533055daddba314e6a0dfa6904565877a734c6da459d33913f0a4510f2da0'
  name 'Focus'
  homepage 'https://heyfocus.com/'
  license :commercial

  depends_on :macos => '>= :mavericks'

  app 'Focus.app'

  uninstall :quit => 'BradJasper.focus'
  zap :delete => [
                  '~/Library/Caches/BradJasper.focus/',
                  '~/Library/Application Support/Focus/',
                  '~/Library/Preferences/BradJasper.focus.plist'
                 ]
end
