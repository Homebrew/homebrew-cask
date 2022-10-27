cask "calmly-writer" do
  arch arm: "arm64", intel: "x64"

  version "2.0.47"

  on_intel do
    sha256 "fcd785c5feccc6a2c962a40aabf02ab6b65b529c32613214aa0a83e57de50f39"
    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}.dmg"
  end
  on_arm do
    sha256 "6660815161a934865289bb502390e25d4a94ac30760a73075d9873d3b374ccda"
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
