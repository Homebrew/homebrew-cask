cask "dbgate" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac_universal", linux: "linux_#{arch}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "7.3.2"
  sha256 arm:          "af72942c67651c19cc78b825388077a19d916b6a9a8c5c137b378592e67f5571",
         intel:        "af72942c67651c19cc78b825388077a19d916b6a9a8c5c137b378592e67f5571",
         arm64_linux:  "259aef23789a8a31606181bf154a06a1997008e0167cf399c61b41fc1fa7d501",
         x86_64_linux: "4539cf125c0002b213ac148f1caedc1112514f09759b27fa398ccb2a97479ae0"

  on_macos do
    depends_on macos: :monterey

    app "DbGate.app"

    zap trash: [
      "~/dbgate-data",
      "~/Library/Application Support/dbgate",
      "~/Library/Logs/dbgate",
      "~/Library/Preferences/org.dbgate.plist",
      "~/Library/Saved Application State/org.dbgate.savedState",
    ]
  end
  on_linux do
    app_image "dbgate-#{version}-linux_#{arch}.AppImage", target: "DbGate.AppImage"
  end

  url "https://github.com/dbgate/dbgate/releases/download/v#{version}/dbgate-#{version}-#{os}.#{url_end}"
  name "DbGate"
  desc "Database manager for MySQL, PostgreSQL, SQL Server, MongoDB, SQLite and others"
  homepage "https://dbgate.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
