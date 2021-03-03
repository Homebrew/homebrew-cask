cask "burp-suite" do
  version "2021.2.1"
  sha256 "6361c376105197eaee6eb456645d40e94c881fd4cb318b8839308c8323b22960"

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
