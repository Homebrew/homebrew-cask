cask "phoenix-code" do
  arch arm: "aarch64", intel: "x64"

  version "5.5.11"
  sha256 arm:   "911abf90c1d1972c54d4fa010af691e6c05354f942b495719392a2413129299e",
         intel: "531843aa53127001ea0e8fc2825e79342ad300e9e42bb990ae09a283aad20428"

  url "https://github.com/phcode-dev/phoenix-desktop/releases/download/prod-app-v#{version}/Phoenix.Code_#{version}_#{arch}.dmg"
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
