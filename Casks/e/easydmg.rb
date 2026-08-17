cask "easydmg" do
  version "2.4.0"
  sha256 "b8d8247ac9bae0632df2246d88bd5fba4b5498a197f0ca55a4d0470cb6eb4bf1"

  url "https://github.com/jeff-schumann/EasyDMG/releases/download/v#{version}/EasyDMG.dmg"
  name "EasyDMG"
  desc "One click DMG installs"
  homepage "https://easydmg.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "EasyDMG.app"

  zap trash: [
    "~/Library/HTTPStorages/com.jeff.easydmg",
    "~/Library/Logs/EasyDMG",
    "~/Library/Preferences/com.jeff.easydmg.plist",
    "~/Library/Saved Application State/com.jeff.easydmg.savedState",
  ]
end
