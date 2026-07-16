cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.58"
  sha256 arm:          "704f95f6093bcb0a7e05a5dada76db9d9f432a54a1d8c53770524a3af09de35b",
         intel:        "8e281be215db3c6e855febffff24d9ed554e1d53a81901b29803bedab825d0a5",
         arm64_linux:  "8e59ba77d2ffbb938a383b9ccbe0b1a50a88d26a623307b584a3dfe24ed745f9",
         x86_64_linux: "60d332416acb1c0329c0efa94dd0989460668728235239eb841e11a0ccf6daf9"

  url_end = on_system_conditional macos: ".dmg", linux: ".AppImage"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}#{url_end}",
      verified: "github.com/t8y2/dbx/"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
    ]
  end

  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end
end
