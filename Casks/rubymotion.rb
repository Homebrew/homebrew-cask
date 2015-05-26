cask :v1 => 'rubymotion' do
  version :latest
  sha256 :no_check

  url 'http://www.rubymotion.com/files/RubyMotion%20Installer.zip'
  name 'RubyMotion'
  homepage 'http://www.rubymotion.com/'
  license :commercial

  installer :manual => 'RubyMotion Installer.app'

  uninstall :pkgutil => 'com.hipbyte.rubymotion.pkg'
end
