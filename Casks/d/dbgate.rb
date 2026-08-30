cask "dbgate" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac_universal", linux: "linux_#{arch}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "7.2.5"

  on_macos do
    sha256 "7df321f839c522a33dd8ea79d4125304e6ab696eceb9de6a1547aa236a5ef402"

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
    sha256 arm64_linux:  "8a4a706c7a20d969d54b5cc1da57db79eca7711bbfdde71844192bd1267db99d",
           x86_64_linux: "70e945c64443e17c06d3596cd61a896a77d794d31a738e2a7381a4b257f235cd"

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
