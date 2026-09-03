cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.72.0"
  sha256 arm:   "529d55ed0da0c0615e0e89e0bc2e2eb8081a2e0a19bac7b66d09f01fac757d5b",
         intel: "2620863cb9cfcb91337d4555a3013e1f4051558cf64376fc4da62ac76a7efb33"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg"
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
