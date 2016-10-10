cask 'crashcrier' do
  version :latest
  sha256 :no_check

  url 'https://www.kainjow.com/downloads/CrashCrier.zip'
  name 'CrashCrier'
  homepage 'https://www.kainjow.com/'

  app 'CrashCrier.app'

  uninstall quit: 'com.kainjow.CrashCrier'
end
