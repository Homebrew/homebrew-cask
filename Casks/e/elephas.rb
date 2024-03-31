cask "elephas" do
  version "9.07"
  sha256 "fe49c39b9b2fe2d85fb1c1ede4c18579093f802852cf0f097cfe31fa11d9d55f"

  url "https://assets.elephas.app/Elephas_#{version.no_dots}.dmg"
  name "Elephas"
  desc "Personal AI Writing Assistant"
  homepage "https://elephas.app/"

  livecheck do
    url "https://assets.elephas.app/index.xml"
    strategy :sparkle
  end

  conflicts_with cask: "homebrew/cask-versions/elephas-beta"
  depends_on macos: ">= :monterey"

  app "Elephas.app"

  zap trash: [
    "~/Library/Application Support/Elephas",
    "~/Library/Caches/com.kamban.elephas",
    "~/Library/HTTPStorages/com.kamban.elephas",
    "~/Library/Preferences/com.kamban.elephas.plist",
  ]
end
