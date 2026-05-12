cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1-beta.1"
  sha256 arm:   "4cb9143513c269ff63fa5d4f58a15104ace8a65cae2f9921a1c05e5730aaf383",
         intel: "8cb530d6bebd646307da36bb2cdb032369c93374e77c5f232851ee9301743dc7"

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
