cask "keycue" do
  version "11.2"
  sha256 "4974f30dfeda32e56756d977182acabedadd82622882e3b1c1b632cbac69bfce"

  url "https://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "KeyCue"
  desc "Finds, learns and remembers keyboard shortcuts"
  homepage "https://ergonis.com/keycue"

  livecheck do
    url "https://ergonis.com/en/keycue/download"
    regex(%r{/keycue/mac/v?(\d+(?:\.\d+)+)/}i)
  end

  depends_on macos: :ventura

  app "KeyCue.app"

  zap trash: [
    "~/Library/Application Support/KeyCue",
    "~/Library/Preferences/com.macility.keycue.plist",
  ]
end
