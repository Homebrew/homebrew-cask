cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2025.11.0-234"
  sha256 arm:   "088f41262ef0256b60c14f6680f758f0e767c36e63a484202d48794c6db3c556",
         intel: "2a8c1650cb3ffb60050fbfcb2e663d99f6069ee1ddde965747498c3aa366f060"

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

  depends_on macos: ">= :big_sur"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
