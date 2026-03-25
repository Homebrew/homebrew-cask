cask "calmly-writer" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.0.66"
  sha256 arm:   "68d4901681e4eb908ed34db32ae529bf93cccf1c52e0313482eaa91132006428",
         intel: "59ba1f8ffd667fba623e30bd68950b824353068c45d2a5c825ae9f7662ba7053"

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
