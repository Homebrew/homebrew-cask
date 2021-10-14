cask "calmly-writer" do
  version "2.0.34"

  if Hardware::CPU.intel?
    sha256 "da4216eb6328358e5043292ac6a241aa7d30353df64acfbde78c02e3e27774d2"

    url "https://www.calmlywriter.com/releases/x64/Calmly%20Writer-#{version}.pkg"
  else
    sha256 "f72907c250e0666476e30341685c0b3364cbcc92d84c376a4cbe63594e53151e"

    url "https://www.calmlywriter.com/releases/arm64/Calmly%20Writer-#{version}.pkg"
  end

  name "Calmly Writer"
  desc "Word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/x64/download.php"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  pkg "Calmly Writer-#{version}.pkg"

  uninstall pkgutil: "calmlywriter"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
