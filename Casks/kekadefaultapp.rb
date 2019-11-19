cask 'kekadefaultapp' do
  version '1.1.5-rc.1,1.0.0-r.6'
  sha256 'f28224e980afe89af5ee05cf3fa4162fa622554050b0646246597a006960d81d'

  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}/KekaDefaultApp-#{version.after_comma}.zip"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'KekaDefaultApp'
  homepage 'https://github.com/aonez/Keka/wiki/Default-application'

  app 'KekaDefaultApp.app'
end
