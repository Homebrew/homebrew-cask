cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.35.2"
  sha256 arm:   "7b05c530c685d2538e57f7f969b5a4a6b955be96af87dac9bd5796b9111e6821",
         intel: "3265ace58065db62e78a311b53a6162a9a71036a216f158e170bedd3e127954f"

  url "https://github.com/wixplosives/codux-versions/releases/download/#{version}/Codux-#{version}.#{arch}.dmg",
      verified: "github.com/wixplosives/codux-versions/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  livecheck do
    url "https://www.codux.com/download"
    regex(/href=.*?Codux[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash: [
    "~/Library/Application Support/Codux",
    "~/Library/Preferences/com.wixc3.wcs.plist",
    "~/Library/Saved Application State/com.wixc3.wcs.savedState",
  ]
end
