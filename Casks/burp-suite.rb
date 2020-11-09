cask "burp-suite" do
  version "2020.9.2"
  sha256 "1580ca4c86c119d16c90c7a9cb5d023478356ea0b28886ece952a5e6ac235cdb"

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
