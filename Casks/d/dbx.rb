cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.49"
  sha256 arm:          "8009a41ca3aba0f1f2e702b116d600c60ae11fc3bbd661e91a39ea0440c225d6",
         intel:        "87914a28410c5585d25da3784317777d70fba9b350ea2bfe6cf2ec0919848a5a",
         arm64_linux:  "54663d78585b349ed6b076d4f3151d62b2289c3bbfaccc2589ef83a84387d863",
         x86_64_linux: "e523f9f19616ac72d02836ce22447541859e716dc8bc01f01ba1212338078345"

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
