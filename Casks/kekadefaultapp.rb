cask 'kekadefaultapp' do
  version '1.1.22,1.0.1-r.7'
  sha256 '14a6150bf81907b54430ab93b1963c16f1fb56a212f36a01da2a44de945299d4'

  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}/KekaDefaultApp.v#{version.after_comma}.zip"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'KekaDefaultApp'
  homepage 'https://github.com/aonez/Keka/wiki/Default-application'

  app 'KekaDefaultApp.app'
end
