cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.87"
  sha256 arm:          "3b368ca6dc454e0d6b66450a4f766bfee26017c91f9a08e0f33c14cb61ac3898",
         intel:        "17e9d78023fc6ac41305c90bd934c3edbf6b871dc65484fc90831625319b0032",
         arm64_linux:  "58e09fec3332cb36cbae2b4c4dac91acf9ce14e5ad56287d0bc3109b52151875",
         x86_64_linux: "623ecbb7dba221cb390e2e90f1eea246b50ee237f69357d07fad6abaf99c8f5e"

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
