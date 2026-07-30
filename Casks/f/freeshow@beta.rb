cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.5-beta.1"
  sha256 arm:   "f3b7de26c5ad744185086bc1d02f0a2180c54b871a072763bf4197cb9db30d13",
         intel: "6a40d11157aa39093002853b862d9713d486abf253fd7967f1037c4f9528dda6"

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
