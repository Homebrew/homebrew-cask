cask "calmly-writer" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.44"

  if Hardware::CPU.intel?
    sha256 "3e136bd4225afa8a8018bb42ab8443a87b0a946787f42c6af550fd2cc1dbc60c"
    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}.dmg"
  else
    sha256 "c8099bb64705867a6c673866f617203a3df152362a67c4c4f7c3043dd14a9f04"
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
