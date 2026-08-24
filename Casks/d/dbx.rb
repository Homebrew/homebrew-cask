cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.93"
  sha256 arm:          "71813cd671487f109effedaf58c31d0422be56b40047dcbd4d2e30a1c090fc26",
         intel:        "0c0bbb1db49844893bd0f7371b73bf180f1ceb4463f94a08bdba5cb7e8eace61",
         arm64_linux:  "e62a90ff15d7540a13ed76348bc1d28d54d79662cc68a4e2b3dbb28b5dbc2276",
         x86_64_linux: "638d765a0d8c78b9c2f213c43383d5f5405b897856bef6d670a9976798759bed"

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
