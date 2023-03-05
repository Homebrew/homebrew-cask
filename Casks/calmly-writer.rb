cask "calmly-writer" do
  arch arm: "arm64", intel: "x64"

  version "2.0.52"

  on_arm do
    sha256 "1e7338c2021c8321046f735756c3f745e36cc063b6c4b3f32fa9a01e460c9bfd"
    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}-#{arch}.dmg"
  end
  on_intel do
    sha256 "2857f7ba53afb8929ed85d2483faccd28ad9ea309a7752ef738cb9ed91adc878"
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

  depends_on macos: ">= :sierra"

  app "Calmly Writer.app"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
