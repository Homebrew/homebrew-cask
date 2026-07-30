cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.61.0"
  sha256 arm:   "e6f7ffd005177f6653a8caf3c9a208c1d3ebc9b7638cea838a5a101f29622754",
         intel: "a29270085a161a205dcf30a1c0c86474d2285509878d89f056a7c3b65d35a5e0"

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
