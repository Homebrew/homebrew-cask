cask "local" do
  arch arm: "-arm64"

  version "8.1.0,6514"
  sha256  arm:   "aa928632eca3511f30c9a5b92814b68a4f0afe5473964cbf1b2b0e79a7ee13e4",
          intel: "4124f8ddb822727e4cbada25b8b45a4ec57f4b7185fb84f6b5db35d5025f9439"

  url "https://cdn.localwp.com/releases-stable/#{version.csv.first}+#{version.csv.second}/local-#{version.csv.first}-mac#{arch}.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/mac#{arch}"
    regex(%r{/(\d+(?:\.\d+)+)\+(\d+)/})
    strategy :header_match do |headers|
      match = headers["location"].match(regex)
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
