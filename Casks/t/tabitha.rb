cask "tabitha" do
  version "0.12.1"
  sha256 :no_check

  url "https://updates.fewersteps.app/tabitha/Tabitha-0.12.1.dmg"
  name "Tabitha"
  desc "Switch windows, not apps"
  homepage "https://tabitha.fewersteps.app/"

  livecheck do
    url "https://updates.fewersteps.app/tabitha/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version}#{item.url[%r{/(\d+)/[^/]+\.dmg}i, 1]}"
    end
  end

  depends_on macos: :tahoe

  app "Tabitha.app"

  zap launchctl: "application.app.fewersteps.Tabitha.5687652.5687658",
      delete:    [
        "~/Library/Caches/app.fewersteps.Tabitha",
        "~/Library/HTTPStorages/app.fewersteps.Tabitha",
        "~/Library/Preferences/app.fewersteps.Tabitha.plist",
      ]
end
