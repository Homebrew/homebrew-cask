cask "burp-suite" do
  version "2021.6.2"
  sha256 "cdbb96c5ee1168e749f8780a59b1b72b342d911cad4230c4180ea5353a71eebe"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=MacOsx"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/community/latest"
    strategy :header_match do |headers|
      headers["location"][%r{/professional[._-]community[._-]v?(\d+(?:-\d+)+)\?}i, 1].tr("-", ".")
    end
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
