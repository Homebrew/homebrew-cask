cask "local@beta" do
  arch arm: "-arm64"

  version "9.2.6,6871"
  sha256 arm:   "82a43f6a1d4d0dd01364fd88f520bed4e9a9939c1b52541152214f3f565a0a3f",
         intel: "efe5dba518a49724dfbbe8c80c1dcfe2fd1600cd422abab8dd7de25f66a5894a"

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
