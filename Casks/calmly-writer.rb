cask "calmly-writer" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.45"

  if Hardware::CPU.intel?
    sha256 "a3a770458f0005179468f27255dcfbbe6eaf1bdf471e8d90d0d3d623f8c874d0"
    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}.dmg"
  else
    sha256 "67daaed343b5a944376f19c9775d3ffd30fe253614b1f53733d61c8da111eb8a"
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
