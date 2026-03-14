cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.18.1"
  sha256 arm:   "f5f026a6c765990d10fa2030bf579da78e0c45513a1c4f0a6d1bcc11fdfc2df6",
         intel: "09193a080fe373f63bebc4abfd9805c7dc5f4a914abad0da9a570ad1f5af35b7"

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
