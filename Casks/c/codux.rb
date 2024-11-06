cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.37.0"
  sha256 arm:   "4dd291453fc44786aef303fae5ab8fd76c57a49ca75588d02ddc5a3ff77256e8",
         intel: "3632edce0dabb2771d37d1c5a65b2855099d1c80eb7d3555a874f8bbe7081856"

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
