cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.16.1"
  sha256 arm:   "737f4172249d14cc758bffa8ec4e15a57f68f1e5289511e253a6ca89215f3bb1",
         intel: "e9d6d383be3a9bb6f4774e79010e13ac04ac82731aff51b5a6bb1ac763433c3d"

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
