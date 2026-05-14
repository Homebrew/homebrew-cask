cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.05.2-3"
  sha256 arm:   "e59b25a525bd5a862155de8831e88f98dadd863f8a4ca256bcff36eb2ab63f43",
         intel: "190a58e6b49a4a05df9637ec7a6c360209cbb211e1b322b7e1c2beb6b93069cd"

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
