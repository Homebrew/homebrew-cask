cask "crescendo" do
  version "1.0.4"
  sha256 "0eebe035b00975002240e7347a45f00291c1d057cf134e5a8cde7ac0f34d0709"

  url "https://github.com/SuprHackerSteve/Crescendo/releases/download/v#{version}/Crescendo.app.zip"
  name "Crescendo"
  desc "Real time event viewer"
  homepage "https://github.com/SuprHackerSteve/Crescendo"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :catalina"

  app "Crescendo.app"

  zap trash: "~/Library/Saved Application State/com.suprhackersteve.crescendo.savedState"
end
