cask "burp-suite" do
  version "2020.9.1"
  sha256 "d17f8cf3a5e1d8252b197eb4358e370d4929aac0031e9b5f33a099d4159010d0"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=MacOsx"
  appcast "https://portswigger.net/burp/releases?initialTab=community"
  name "Burp Suite"
  homepage "https://portswigger.net/burp/"

  installer script: {
    executable: "Burp Suite Community Edition Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
    sudo:       true,
  }

  postflight do
    set_ownership "/Applications/Burp Suite Community Edition.app"
    set_permissions "/Applications/Burp Suite Community Edition.app", "a+rX"
  end

  uninstall delete: "/Applications/Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
