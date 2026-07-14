cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.56"
  sha256 arm:          "013a5115a4f4eea43306f8f32fd711bef428074e9a9895833e32cf4dea6ba1ea",
         intel:        "8d39339beb3060f7dbcbfbd68ba8d08191967bb0c7f05e443a650958fb3e055c",
         arm64_linux:  "2467060cafcc6391508c9bdbc5ce9c36d6ace788c3bdbc37c32a243d0207286c",
         x86_64_linux: "a6b6174bcbaf48a8eaa9dd153f1f311b1a0529c684f43781b10f265050c1e412"

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
