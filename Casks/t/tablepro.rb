cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.20.4"
  sha256 arm:   "6d013a75ce5f0400a5ecc2a533b7f6b16e4bbe3c4379e25b72dd97b8ecd080cf",
         intel: "47a754181be1d9a18786ef1fe2a413a97e0d18d84a2d37b73c7278de3a100ba1"

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
