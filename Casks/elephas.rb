cask "elephas" do
  version "6.0.8"
  sha256 :no_check

  url "https://elephas.app/downloads/Elephas_latest.dmg"
  name "Elephas"
  desc "Personal AI Writing Assistant"
  homepage "https://elephas.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  conflicts_with cask: "homebrew/cask-versions/elephas-beta"
  depends_on macos: ">= :catalina"

  app "Elephas.app"

  zap trash: [
    "~/Library/Application Support/Elephas",
    "~/Library/Caches/com.kamban.elephas",
    "~/Library/HTTPStorages/com.kamban.elephas",
    "~/Library/Preferences/com.kamban.elephas.plist",
  ]
end
