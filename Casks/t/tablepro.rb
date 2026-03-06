cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.1"
  sha256 arm:   "698a1b6e0ebc2da6aedf5152244c6d3943b84c55b684ad815dc6e75dea689ddf",
         intel: "ff2c9b74e956749fa2eb4c6069d07eab0f50ef02d4846c34afe9e069efebd59f"

  url "https://github.com/datlechin/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg"
  name "TablePro"
  desc "Native database client for MySQL, PostgreSQL, SQLite, and MongoDB"
  homepage "https://github.com/datlechin/TablePro"

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
    "~/Library/Saved Application State/com.TablePro.savedState",
  ]
end
