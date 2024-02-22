cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "26.0.3.3"
  sha256 arm:   "6c7fb1d7edd12e8989e1b4b5534f94f7f74480418a7abd523208acbf945d8de2",
         intel: "5ea32dc48dced61669dd8bae4f9648dc23d674afb7e72408b9a6df881b677414"

  url "https://down.115.com/client/mac/115br_v#{version}_#{arch}.dmg"
  name "115Browser"
  name "115浏览器"
  desc "Web browser"
  homepage "https://pc.115.com/browser.html#mac"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome"
    strategy :json do |json|
      json["data"]["mac"]["version_code"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end
