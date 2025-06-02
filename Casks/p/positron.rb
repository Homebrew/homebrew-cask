cask "positron" do
  version "2025.06.0-167"
  sha256 "813178aba2feec6581a78d11b52cb2830d031c3729e3735cf67a567122a1f1a5"

  url "https://cdn.posit.co/positron/prereleases/mac/universal/Positron-#{version}.dmg"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/prereleases/mac/universal/releases.json"
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
