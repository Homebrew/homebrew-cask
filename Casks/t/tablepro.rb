cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.40.3"
  sha256 arm:   "e5e9f8e527d91b351536d1e98779e79ae9842ef180b1edd4fccf05b9bb9ee51a",
         intel: "2527769e491e1f6388df2a2abf6c134f7c717e89ac920fb79765fb83820b9554"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg",
      verified: "github.com/TableProApp/TablePro/"
  name "TablePro"
  desc "Native database client for many database types"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://raw.githubusercontent.com/TableProApp/TablePro/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TablePro.app"

  zap trash: [
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
