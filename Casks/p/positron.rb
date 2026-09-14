cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.1-2"
  sha256 arm:   "47856dd881bff89c1749c137bd05dc1838a749afcd9e06f946bce3dca4a257a6",
         intel: "53580e5c6d7573306f04f4de16b146f80fadbacbabf0ef05c816f35b370625e9"

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
