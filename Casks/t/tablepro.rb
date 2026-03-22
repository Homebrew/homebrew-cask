cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.23.0"
  sha256 arm:   "c1a37a7263bc54e7e2aae3352c4c8ca7901ee0d61aa3a14f89e1f32fe8e032c5",
         intel: "2303d92ed4a4c0479cee6df7dd775adbe0c249648ca1b0bcfffd75d71768963b"

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
