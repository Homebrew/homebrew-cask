cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2025.12.0-167"
  sha256 arm:   "f3f8093ebbad7068f09f8a3f9bc787f243438230d83c756d21f387e94f6c4dfc",
         intel: "e0e96447b570b7ce9b26018cd5ff54a2f8b55811c60fde60b73646bdb5869f8f"

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
