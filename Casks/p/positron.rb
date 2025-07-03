cask "positron" do
  version "2025.07.0-204"
  sha256 "7f5110c3a7ca1f8a60546efe61c2cfbfa15ac09d93379d3b8582c3d299fe3e53"

  url "https://cdn.posit.co/positron/releases/mac/universal/Positron-#{version}-universal.dmg"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/releases/mac/universal/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
