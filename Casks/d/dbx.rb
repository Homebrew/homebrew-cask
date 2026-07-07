cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.48"
  sha256 arm:          "e486b83f294479040d89d1a150354586f17fac274b9a0cf3b091dee00ce6a453",
         intel:        "5bbe24db982e5195d20be4e5fc91b03c3e7c83a247dde17b1debcc6e4357256b",
         arm64_linux:  "7489def1c5a0e92d15298e18c892d91acd20d364858057f434fe7010aef307fd",
         x86_64_linux: "8c23ba278c6cebd1bf27f2e877338435d6d9e56f6e8c206c5b7e633d24cfcfaa"

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
