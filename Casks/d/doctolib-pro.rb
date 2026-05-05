cask "doctolib-pro" do
  arch arm: "-arm64", intel: ""

  version "2.107.0"
  sha256 :no_check

  url "https://ddv-install.doctolib.fr/DoctolibProDesktop-latest#{arch}.dmg"
  name "Doctolib Pro"
  desc "Desktop app for Doctolib Pro"
  homepage "https://info.doctolib.fr/bureau/"

  livecheck do
    skip "The vendor's update feed is stale and does not reflect current releases."
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Doctolib.app"

  zap trash: [
    "~/Library/Application Support/Doctolib",
    "~/Library/Caches/com.doctolib.pro.desktop",
    "~/Library/HTTPStorages/com.doctolib.pro.desktop",
    "~/Library/Preferences/com.doctolib.pro.desktop.plist",
  ]
end
