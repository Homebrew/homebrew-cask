cask "eloston-chromium" do
  arch arm: "arm64", intel: "x86-64"

  version "128.0.6613.137-1.1"
  sha256 arm:   "2a8f09d7139d9cc975c361a3a7a7d7f017315f2e91c206cd6210a51fe36e3688",
         intel: "1c1694a5f71a8668f01e2690562429d1f0f52229262a98b6e169d2aeabbf610f"

  url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/ungoogled-software/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)(?:[._-]#{arch})?(?:[._-]+?(\d+(?:\.\d+)*))?$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  conflicts_with cask: [
    "chromium",
    "freesmug-chromium",
  ]
  depends_on macos: ">= :catalina"

  app "Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
