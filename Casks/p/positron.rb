cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.08.0-331"
  sha256 arm:   "6e900ef90e77aa0963f46002bbc9b90834c8814fb24a4dbf3d56bafc7daa9f17",
         intel: "16b8d767a7de8dc0d13dbf7dbc69acbe0b3271fa4f8b360a3c4c25854beafd99"

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
