cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.92"
  sha256 arm:          "35b0b1c4e9ad275857c6447a26cafd7d18ddc63e2da6f1e3747ff07a135f4521",
         intel:        "5dbcfc833cd12639fb48b4f8f5e12e1c2455f92d27e45a1df04822af1fbe1848",
         arm64_linux:  "9483bf7affd4ae7998b4767aafbb9885b76f64187910b44a99f9c04e7f9accf4",
         x86_64_linux: "5b9bdc692806b634e72467ddf80895631a88f3267b6bba13e9b982b87ca2b590"

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
