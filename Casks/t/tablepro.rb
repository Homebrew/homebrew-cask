cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.60.0"
  sha256 arm:   "bb8f6e22f8e8173bae5158f1788cff9a63197816e6befa5f1f107c65020bf015",
         intel: "20afdab9767c79fa0773973e05b141acde68bdc504cc09d8127d84552e1c7ea9"

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
