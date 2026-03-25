cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.24.1"
  sha256 arm:   "9caf13eb0b7cb776f4c22e9d2648280c44309e23fc464a8f3c009baaf43b1db9",
         intel: "5159fa6edccfd1edeb2a0d872d47aaee3737b172cf45e7ecb8d263f0abce5fee"

  url "https://github.com/datlechin/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg",
      verified: "github.com/datlechin/TablePro/"
  name "TablePro"
  desc "Native database client for MySQL, PostgreSQL, SQLite, and MongoDB"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://raw.githubusercontent.com/datlechin/TablePro/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TablePro.app"

  zap trash: [
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
