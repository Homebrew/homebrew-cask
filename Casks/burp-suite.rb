cask "burp-suite" do
  version "2020.11.2"
  sha256 "8a5601998896f137307b5ed35be7b9603adc05765dccb327ed3b881b154a5ecc"

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
