cask "calmly-writer" do
  arch arm: "arm64", intel: "x64"

  version "2.0.56"

  on_arm do
    sha256 "00f6b14dd1020d7b6235925f91fc4060c4db3f19cd20366b1f46fbd895a22491"

    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}-#{arch}.dmg"
  end
  on_intel do
    sha256 "947089ad8532f4f5ce63aff7e0d5ec68b026cabfbdc0163cafe078c5388df8d4"

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
