cask "calmly-writer" do
  arch arm: "arm64", intel: "x64"

  version "2.0.50"

  on_intel do
    sha256 "843782d181acfde85f9137b5640a184ae23d5d072b115c0fdf31b3fe5ab0c1bc"
    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}.dmg"
  end
  on_arm do
    sha256 "9688a991c0eeb42b472863f18ca3aaf9aa7d954bbc557a3cd3829b6807692450"
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
