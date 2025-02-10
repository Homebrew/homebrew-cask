cask "local@beta" do
  arch arm: "-arm64"

  version "9.2.1,6763"
  sha256  arm:   "da0b754c6c43c174b38264ce5253bcef449b220da2f7a90025d49fa500a09dbf",
          intel: "2994ff89d0d71ea9a3a4f5ec491dd56543059a0c240b07d0ee5c973a9b42d190"

  url "https://cdn.localwp.com/releases-beta/#{version.csv.first}+local-beta-#{version.csv.second}/local-beta-#{version.csv.first}-b#{version.csv.second}-mac#{arch}.dmg"
  name "Local Beta"
  desc "WordPress local development tool by Flywheel (beta)"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/beta/latest/mac#{arch}"
    regex(%r{/(\d+(?:\.\d+)+)\+local-beta-(\d+)/}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "Local Beta.app"

  zap trash: [
    "~/Library/Application Support/Local Beta",
    "~/Library/Logs/local-beta.log",
    "~/Library/Preferences/com.getflywheel.lightning.local-beta.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local-beta.savedState",
  ]
end
