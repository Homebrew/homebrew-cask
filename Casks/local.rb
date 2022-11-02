cask "local" do
  arch arm: "mac-arm64", intel: "mac"

  version "6.5.1,6195"
  sha256  arm:   "ed71314937147add7c7fe46d61a0eb52cf249ee87a4ce64aa0f605eab4aa36d4",
          intel: "ea914e78055aeaeb7577e5e604dc9bb9cb29cf6fad491926d65316a86d3c154d"

  url "https://cdn.localwp.com/releases-stable/#{version.csv.first}+#{version.csv.second}/local-#{version.csv.first}-#{arch}.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)+)\+(\d+)/})
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "Local.app"

  zap trash: [
    "~/Library/Application Support/Local",
    "~/Library/Logs/local-lightning.log",
    "~/Library/Preferences/com.getflywheel.lightning.local.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local.savedState",
  ]
end
