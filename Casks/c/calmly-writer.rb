cask "calmly-writer" do
  arch arm: "arm64", intel: "x64"

  version "2.0.55"

  on_arm do
    sha256 "9736bb13158eb9f76c1386778e8bfacc3aa4c732b1926d9bbb8bab7d8519ea2c"

    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}-#{arch}.dmg"
  end
  on_intel do
    sha256 "2b96979d4fcec839134197fa0406ee1107b19fef17721e854068074360a90a9e"

    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}.dmg"
  end

  name "Calmly Writer"
  desc "Word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/#{arch}/download.php"
    regex(/Calmly(?:\s+|%20|[._-])?Writer[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Calmly Writer.app"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
