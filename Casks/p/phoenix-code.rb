cask "phoenix-code" do
  arch arm: "aarch64", intel: "x64"

  version "5.1.24"
  sha256 arm:   "f9fe9e119e5072ce238f977c9a84904b995da90005f4e050ed17faffe75b6f7e",
         intel: "15f4ea04fdafdea22cf11e8d51c1ae3926075f28ce795e7c73beac1e7e6027d5"

  url "https://github.com/phcode-dev/phoenix-desktop/releases/download/prod-app-v#{version}/Phoenix.Code_#{version}_#{arch}.dmg",
      verified: "github.com/phcode-dev/phoenix-desktop/"
  name "Phoenix Code"
  desc "Code editor"
  homepage "https://phcode.io/"

  livecheck do
    url "https://updates.phcode.io/tauri/update-latest-stable-prod.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Phoenix Code.app"

  zap trash: [
        "~/Library/Application Support/io.phcode",
        "~/Library/Caches/io.phcode",
        "~/Library/Saved Application State/io.phcode.savedState",
        "~/Library/WebKit/io.phcode",
      ],
      rmdir: "~/Documents/Phoenix Code"
end
