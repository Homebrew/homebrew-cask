cask "tabitha" do
  version "0.12.0"
  sha256 :no_check

  url "https://tabitha.fewersteps.app/download/Tabitha.dmg"
  name "Tabitha"
  desc "Switch windows, not apps"
  homepage "https://tabitha.fewersteps.app/"

  livecheck do
    url "https://tabitha.fewersteps.app/changelog/"
    strategy :page_match do |page|
      page.scan(/\#(\d+\.\d+\.\d+)/i)
          .map { |match| match&.first }
    end
  end

  depends_on macos: :tahoe

  app "Tabitha.app"

  "~/Library/Caches/app.fewersteps.Tabitha",
	"~/Library/HTTPStorages/app.fewersteps.Tabitha",
	"~/Library/Preferences/app.fewersteps.Tabitha.plist",
end
