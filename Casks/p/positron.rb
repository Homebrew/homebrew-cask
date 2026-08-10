cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.08.1-2"
  sha256 arm:   "d3e14e33d4692bdb8ca8a9f178c8cf519d4339850900cb291582630231a7d9ad",
         intel: "c55715fd6a2906e7ea3bae3a94b22abc138a3fe976cc9e6e3415ae8ad5ea1581"

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
