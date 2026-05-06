cask "memry" do
  arch arm: "arm64", intel: "x64"

  version "2026-05-06.4"
  sha256 arm:   "ae2eafa7589164923e897281b89a4ce5592c8ca414476e2c550ba616684c0e20",
         intel: "4a2c32e51d5ffd6416fa6a5c72931cbf2416090e8742404513cd761d24c036e3"

  url "https://github.com/memrynote/memry/releases/download/v#{version}/Memry-#{version}-#{arch}.dmg",
      verified: "github.com/memrynote/memry/"
  name "Memry"
  desc "Local-first workspace for notes, tasks, journals, and inbox"
  homepage "https://memrynote.com/"

  livecheck do
    url :url
    regex(/^v?(\d{4}-\d{2}-\d{2}(?:\.\d+)?)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.[](regex, 1)
    end
  end

  depends_on macos: ">= :monterey"

  app "Memry.app"

  uninstall quit: "com.memrynote.memry"

  zap trash: [
    "~/Library/Application Support/Memry",
    "~/Library/Application Support/memry",
    "~/Library/Caches/com.memrynote.memry",
    "~/Library/Caches/com.memrynote.memry.ShipIt",
    "~/Library/HTTPStorages/com.memrynote.memry",
    "~/Library/Logs/Memry",
    "~/Library/Logs/memry",
    "~/Library/Preferences/com.memrynote.memry.plist",
    "~/Library/Saved Application State/com.memrynote.memry.savedState",
  ]
end
