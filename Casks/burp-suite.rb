cask "burp-suite" do
  version "2021.4.1"
  sha256 "ff8344d4d3e9b4dae1fb177750954f8d546e297e910740e0013a3b4ca06c33eb"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=MacOsx"
  name "Burp Suite"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases?initialTab=community"
    strategy :page_match
    regex(%r{Professional\s*/\s*Community\s*(\d+(:?\.\d+)*)}i)
  end

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
