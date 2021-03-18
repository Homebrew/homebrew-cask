cask "burp-suite" do
  version "2021.3.2"
  sha256 "aee5beeded139278c0e4aea19128b1a2682e4197b6c30c5ca5785f011854d31b"

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
