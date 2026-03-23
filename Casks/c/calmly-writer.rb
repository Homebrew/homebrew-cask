cask "calmly-writer" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.0.65"
  sha256 arm:   "3c76aeff11564eed2c921e98420396316e59e77cf8c4ccdfd70a88c809831795",
         intel: "59cafa3e182e5d567d7f6409eaf989752f1308d9dfbf75ad953457e873c7854d"

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
