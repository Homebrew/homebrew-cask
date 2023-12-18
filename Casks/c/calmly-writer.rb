cask "calmly-writer" do
  arch arm: "arm64", intel: "x64"

  version "2.0.53"

  on_arm do
    sha256 "1f9d4f4e31d5bd8306c9e7dc206cc2f077f185c3bae1286f48ec92d678630cb0"

    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}-#{arch}.dmg"
  end
  on_intel do
    sha256 "6af72b32bafdf741dfcc26167270757738c2a3b362090190d24b9b35e0b1a831"

    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}.dmg"
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

  depends_on macos: ">= :high_sierra"

  app "Calmly Writer.app"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
