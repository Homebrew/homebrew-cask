cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.55"
  sha256 arm:          "4be225c0646f09dc76478109276ff3e2e1ccdee0604cf65e2fb3bcfcd82bfee0",
         intel:        "30a4b90df0376dfc4ef811a69b8973def823470d10da8ea8719a0311f9315b7b",
         arm64_linux:  "83a4169b8dd98c856304520b56942402646400da77ee69f1d46f6b5952f08325",
         x86_64_linux: "f3572b44e6bb7ec6a0e59fedfa97452112315ef3a76f3e291b22dce17e061dc0"

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
