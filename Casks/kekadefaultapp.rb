cask 'kekadefaultapp' do
  version '1.1.1,1.0.0-r.6'
  sha256 '45b4072395aea8cdb6827b193ab8520097ac939f3ab9da6728394c8a666096b8'

  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}/KekaDefaultApp-#{version.after_comma}.zip"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'KekaDefaultApp'
  homepage 'https://github.com/aonez/Keka/wiki/Default-application'

  app 'KekaDefaultApp.app'
end
