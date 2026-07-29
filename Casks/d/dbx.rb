cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.69"
  sha256 arm:          "54e6af0dd229a896cf45e296400fe44adcbb062e99b2598d4f3324fa10d88bb6",
         intel:        "9f5e295bfb8ffe668881a4b05b970dfeeb1bb5d465a12e5fc6a8e7bae534f634",
         arm64_linux:  "7a69cef0f390fe18b87c2ec7deb87ecb1dc6ce7d71d70bd1e8ee7eb954ae58cb",
         x86_64_linux: "952cad4e6299deb4f555c29bccea99fb5f553395a81a94fd840901a98f5f2468"

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
