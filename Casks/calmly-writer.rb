cask "calmly-writer" do
  version "2.0.26"

  if Hardware::CPU.intel?
    sha256 "5cf3e92fa5fc2fc0399a5cf77eb44be7c115fbce160924e3ea431012d44b1e26"

    url "https://www.calmlywriter.com/releases/x64/Calmly%20Writer-#{version}.pkg"
  else
    sha256 "0a39fdc3e990e2ea6ffcb61742b93da46b67f4e49fe6bf88e402fe1a362e5bae"

    url "https://www.calmlywriter.com/releases/arm64/Calmly%20Writer-#{version}.pkg"
  end

  name "Calmly Writer"
  desc "Simple word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/x64/download.php"
    strategy :header_match
  end

  pkg "Calmly Writer-#{version}.pkg"

  uninstall pkgutil: "calmlywriter"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
