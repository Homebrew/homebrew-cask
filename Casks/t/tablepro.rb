cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.20.1"
  sha256 arm:   "977f310b3d4223c94b1f202c1cd283a11fa87310271bee895977f2eb8e41573c",
         intel: "f9e1204e79d9e3900a194f8d186eb2c9c998f6238c3002637a8c35489633af6e"

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
