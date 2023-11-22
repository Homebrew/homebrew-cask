cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.15.0"
  sha256 arm:   "8737f8d6f394b07e8b9098bd09ea8dc0e1f1e8b126d16499bb8af5524ff63f24",
         intel: "2205069ac7f4de36d9771f0b8329eee759d5d407204afa7fa15bb75f789cf808"

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
