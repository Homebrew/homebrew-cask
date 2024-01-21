cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.18.2"
  sha256 arm:   "77028bcb59183d05ca342b885953a49e8a57f12484b869e9d74c59c88572840d",
         intel: "6357704a6da056a7cf44b057f69f356d4fe1a6a08d739a6c091da6c054aa9a3f"

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
