cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.5"
  sha256 arm:          "cdfb86ec47c80f083ae76c4bfbe621549aed2a2ecc6c2dc338ba674dad1d55cc",
         intel:        "9d3da3158e34aba1f261212aa6db064655937c8363df665b25950f7f4c7d2a37",
         arm64_linux:  "3d3b0041e753cbfc0f1d56fb51fc50e4a3f7643bb11ce99d58823b1d92e2e354",
         x86_64_linux: "4b7965b1af341de4ed2cb764bfa795d09d034984d8699bd6ed74c506c048458c"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
      "~/Library/WebKit/com.dbx.app",
    ]
  end
  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.#{os}"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
