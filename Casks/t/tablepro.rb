cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.20.2"
  sha256 arm:   "eb62ea8a1121c248cf55a77573fb2e4986a404b60a128e1231a635e60058a514",
         intel: "4cb9de54e6a9f05c7d6718d2103927c7ab7ac4bae8b9d458875de896d1e6bdc6"

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
