cask "dbgate" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac_universal", linux: "linux_#{arch}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "7.2.6"

  on_macos do
    sha256 "6759fb9e4d8a7936d04a2b5d7b0fb881418e50bb1db42b4f4710955a6674d209"

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
    sha256 arm64_linux:  "406f6630b35d117ddb7998eb6853af657424738572b58cc4a2d0c532e31d9b3b",
           x86_64_linux: "f5b5311b6cf1868d07a4dd5349dd6c157ad4958120b406cb1da7d4586820278b"

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
