cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.08.2-4"
  sha256 arm:   "410068a924e5ca8cb2d13152dcb16b804441ba8934c1966b2019754fe65c94f1",
         intel: "f98b5357187b50097baea02e5258443464e3447356f8fd8d1845adbf59c75782"

  url "https://cdn.posit.co/positron/releases/mac/#{arch}/Positron-darwin-#{version}-#{arch}.zip"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/releases/mac/#{arch}/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
