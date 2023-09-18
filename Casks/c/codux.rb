cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.11.0"
  sha256 arm:   "ff82a89fd36bfc01ab551c77cd10eaaf8d26b8ef0dedc74fe99c3a43bc34028b",
         intel: "721f6c531f8c7f30981d78711015e260e28d2e271f1af0ec9943b0c00bdb580d"

  url "https://github.com/wixplosives/codux-versions/releases/download/#{version}/Codux-#{version}.#{arch}.dmg",
      verified: "github.com/wixplosives/codux-versions/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash:
             [
               "~/Library/Application Support/Codux",
               "~/Library/Preferences/com.wixc3.wcs.plist",
               "~/Library/Saved Application State/com.wixc3.wcs.savedState",
             ]
end
