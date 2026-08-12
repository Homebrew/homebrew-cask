cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.82"
  sha256 arm:          "197a0df14c5f34422406c480f4390aea322eaeab3a8f7b503c3e3dd86cc6b6aa",
         intel:        "7c0f6abfcbc325202cec1db95be58a2d03a5b9cfcc9854c107278f2e49172ad7",
         arm64_linux:  "86ad2956f67f0fbcc2bfa6d5d2ed74eb6290fa94c024d134ca58284988d8b144",
         x86_64_linux: "efa0e1b15dc4e37cc89f981c9477e5b368d591757ca4921ab9c0f3b3b1337fb1"

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
