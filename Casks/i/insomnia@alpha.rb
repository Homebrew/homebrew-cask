cask "insomnia@alpha" do
  version "10.1.0-beta.0"
  sha256 "96c6d85a2e8f10fb71eff9fe7d19ca9030e0e54db1ea47e297b4064adee7e67d"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.dmg",
      verified: "github.com/Kong/insomnia/"
  name "Insomnia"
  desc "HTTP and GraphQL Client"
  homepage "https://insomnia.rest/"

  livecheck do
    url :url
    regex(/^core@v?(\d+(?:\.\d+)+[._-](?:alpha|beta|rc)[._-]?\d*)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "insomnia"
  depends_on macos: ">= :catalina"

  app "Insomnia.app"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Caches/com.insomnia.app",
    "~/Library/Caches/com.insomnia.app.ShipIt",
    "~/Library/Cookies/com.insomnia.app.binarycookies",
    "~/Library/Preferences/ByHost/com.insomnia.app.ShipIt.*.plist",
    "~/Library/Preferences/com.insomnia.app.helper.plist",
    "~/Library/Preferences/com.insomnia.app.plist",
    "~/Library/Saved Application State/com.insomnia.app.savedState",
  ]
end
