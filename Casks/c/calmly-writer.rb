cask "calmly-writer" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.0.61"
  sha256 arm:   "ed47e07a70bf8ff242aaef9e310ae743bcd878f268e23638c3f7dda846e933e0",
         intel: "a2507d3c97672a50e049fd8be391e81d2b16a28ca5ad35f202fbf96e41705a91"

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
