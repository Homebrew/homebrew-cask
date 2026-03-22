cask "calmly-writer" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.0.64"
  sha256 arm:   "e1c8befee1e038df4237bd777218d5d094abc42ebb2d1554959ab7782f273dc5",
         intel: "d7539bd4b843693a18cbb90cb71e2db7c1f6d1d2c1391b23ef1ae63fa6973867"

  url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}#{arch}.dmg"
  name "Calmly Writer"
  desc "Word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/#{livecheck_arch}/download.php"
    regex(/Calmly(?:\s+|%20|[._-])?Writer[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Calmly Writer.app"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
