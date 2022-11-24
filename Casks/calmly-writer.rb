cask "calmly-writer" do
  arch arm: "arm64", intel: "x64"

  version "2.0.48"

  on_intel do
    sha256 "91aca349f688ebcf6dc1f113ba4de205023fcc77d76f5d044c04370373a6db65"
    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}.dmg"
  end
  on_arm do
    sha256 "cc5f8064c7422ee384b271cbbaed5008af5d1d9dea379be273fbcc4025ac4756"
    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}-#{arch}.dmg"
  end

  name "Calmly Writer"
  desc "Word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/#{arch}/download.php"
    strategy :header_match do |headers|
      headers["location"][/Calmly(?:\s|%20)Writer[._-]v?(\d+(?:\.\d+)+)/i, 1]
    end
  end

  depends_on macos: ">= :sierra"

  app "Calmly Writer.app"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
