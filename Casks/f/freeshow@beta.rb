cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.5-beta.3"
  sha256 arm:   "c3ad66b950583a66cc44d701718819e5cd2c9eb1eb57d6574e3503fb81cceebe",
         intel: "b98271f9c011066451973c27812be5b7acf8202e58d587d43bcd60dcb150c33d"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
  depends_on macos: :big_sur

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
