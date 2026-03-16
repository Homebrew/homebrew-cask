cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.19.1"
  sha256 arm:   "b817ddc87f1b329cd858aaa51d8b12dbff5563bd277f1bca1392837bf3559e53",
         intel: "d1af7e26b6d19a63bfd9ea5055ff54f91c8d4bc42e340c007a545ed70b3290f4"

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
