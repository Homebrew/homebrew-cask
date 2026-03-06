cask "paseo" do
  version "0.1.18"
  sha256 "acded7f3eaf3f99c94332ef96e15beabe11d7dce2c018cb87c7bbde7f1c49075"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo_#{version}_universal.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Orchestrate coding agents from anywhere"
  homepage "https://paseo.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Paseo.app"

  zap trash: [
    "~/Library/Application Support/dev.paseo.desktop",
    "~/Library/Caches/dev.paseo.desktop",
    "~/Library/Logs/dev.paseo.desktop",
    "~/Library/Preferences/dev.paseo.desktop.plist",
    "~/Library/Saved Application State/dev.paseo.desktop.savedState",
  ]
end
