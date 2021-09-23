cask "calmly-writer" do
  version "2.0.33"

  if Hardware::CPU.intel?
    sha256 "6d8d0e24203c1e9725928c76cf93a330e2f29d94457abce1ea869bc2b8dbe67b"

    url "https://www.calmlywriter.com/releases/x64/Calmly%20Writer-#{version}.pkg"
  else
    sha256 "ac0130e24269f36bd754f606ed1e88c8a3eec148d065d1c37871d08430f5cd35"

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
