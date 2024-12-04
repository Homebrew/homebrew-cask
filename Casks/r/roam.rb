cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "138.0.0-beta001"
  sha256 :no_check

  url "https://download.ro.am/Roam/8a86d88cfc9da3551063102e9a4e2a83/latest/darwin/#{arch}/Roam.dmg"
  name "Roam"
  desc "Virtual office"
  homepage "https://ro.am/"

  livecheck do
    url "https://ro.am/release-notes"
    regex(/version:\s*"v?(\d+(?:\.\d+)+(?:[._-]beta\d+)?)"/i)
    strategy :page_match do |page, regex|
      js_match = page[/src=.*?(index[._-]\w+\.js)/i, 1]
      next if js_match.blank?

      js_page = Homebrew::Livecheck::Strategy.page_content("https://ro.am/website/#{js_match}")
      js_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Roam.app"

  uninstall quit: "inc.wonder.roam"

  zap trash: [
    "~/Library/Caches/inc.wonder.roam",
    "~/Library/Caches/inc.wonder.roam.ShipIt",
    "~/Library/Preferences/inc.wonder.roam.plist",
    "~/Library/Saved Application State/inc.wonder.roam.savedState",
  ]
end
