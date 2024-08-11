cask "rubymotion" do
  version "1.0"
  sha256 :no_check

  url "http://www.rubymotion.com/files/RubyMotion%20Installer.zip"
  name "RubyMotion"
  desc "Write cross-platform native apps in Ruby"
  homepage "http://www.rubymotion.com/"

  deprecate! date: "2024-08-11", because: :unmaintained

  installer manual: "RubyMotion Installer.app"

  uninstall pkgutil: "com.hipbyte.rubymotion.pkg"

  zap trash: "~/.rubymotion"

  caveats do
    free_license "http://www.rubymotion.com/download/starter/"
  end
end
