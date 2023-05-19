cask "local" do
  arch arm: "mac-arm64", intel: "mac"

  version "6.7.2,6375"
  sha256  arm:   "577e8c0da79dfc33150497d085cc15b8b905b48fb83d7553a1b160cb3587268d",
          intel: "74e23f5db5a7a05e660695c34081833517b72ec83e6513a3b7bd6fc3c50f09ad"

  url "https://cdn.localwp.com/releases-stable/#{version.csv.first}+#{version.csv.second}/local-#{version.csv.first}-#{arch}.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/#{arch}"
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
