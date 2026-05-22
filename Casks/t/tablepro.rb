cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.43.3"
  sha256 arm:   "964e94e446cbf0064a5cf3e2d1903f3f36ff3afd3f3b75de1fe0b8107f889eb0",
         intel: "bf5a66bedb54bfc288942a625ab8775b1fa90416e41721d9e01d95ec3ae926fd"

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
