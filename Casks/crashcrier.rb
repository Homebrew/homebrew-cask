cask :v1 => 'crashcrier' do
  version :latest
  sha256 :no_check

  url 'http://www.kainjow.com/downloads/CrashCrier.zip'
  name 'CrashCrier'
  homepage 'http://www.kainjow.com/'
  license :mit

  app 'CrashCrier.app'

  uninstall :quit => 'com.kainjow.CrashCrier'
end
