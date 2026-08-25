cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.94"
  sha256 arm:          "da453d221ad410120cbd611b8a0745ed7bada67bb4233ad188b9b1038a3c70dd",
         intel:        "e97ab918170efd91d7f9633355cca8513e55725835a59bcb245468dbaab0d09d",
         arm64_linux:  "08da40ade44a2ac7ee4c3853c2f36adca2dd0c01fed0e59bb20f4a5c35665b0f",
         x86_64_linux: "c1a45b3c5210ea5b8bd353cbe8ef1306ed2e66018fce56cf6e285ae20881937a"

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
