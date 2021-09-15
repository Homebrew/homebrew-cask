cask "burp-suite-professional" do
  version "2021.8.3"
  sha256 "5e6b9271f741480feac73f869d43f841027f48c2581e75a6a5bd082399e5472c"

  url "https://portswigger.net/burp/releases/professional-community-#{version.dots_to_hyphens}?requestededition=professional"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/professional/latest"
    strategy :header_match do |headers|
      headers["location"][%r{/professional[._-]community[._-]v?(\d+(?:-\d+)+)\?}i, 1].tr("-", ".")
    end
  end

  installer script: {
    executable: "Burp Suite Professional Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
    sudo:       true,
  }

  postflight do
    set_ownership "/Applications/Burp Suite Professional.app"
    set_permissions "/Applications/Burp Suite Professional.app", "a+rX"
  end

  uninstall delete: "/Applications/Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
