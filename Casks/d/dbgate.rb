cask "dbgate" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac_universal", linux: "linux_#{arch}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "7.3.1"
  sha256 arm:          "fe55d3e05cb6408f5e18623e826a7a9f79d5caa42dd8156a9735df67c01d7679",
         intel:        "fe55d3e05cb6408f5e18623e826a7a9f79d5caa42dd8156a9735df67c01d7679",
         arm64_linux:  "969c990b59ea7108e67189fdb749d4f193015e8db1e88a22e76803336cb1fb45",
         x86_64_linux: "79c2d69a25d40f3ddc27c76f5008f3280685198bb040839b548735a293aaaff3"

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
