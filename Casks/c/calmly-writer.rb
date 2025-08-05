cask "calmly-writer" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.0.60"
  sha256 arm:   "5eb30d1a3a7b4fa9a356a3edc525bf428645b0e50509a687264efb9650f78ebd",
         intel: "1f94895515314c655cf5b8b8622046482764355f0c56a306051cc30f6b4b6096"

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
