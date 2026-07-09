cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.51"
  sha256 arm:          "d871cb95d5b82ccd66d323d0cdf3981be101d3c5590362f01999a99884afaae8",
         intel:        "79392f1a67932a0db30c2fbd407119e25fd3f3fcfc1b3d01f18e5cecbadeca45",
         arm64_linux:  "692c684d9c269ef45726efc357f7378ec18dfc5dde001764d94a111b0db9162f",
         x86_64_linux: "6a6b640223e196235f71d9f6e990de76892fe4f5c380bcd8f4b51f25f80925b0"

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
