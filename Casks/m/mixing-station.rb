cask "mixing-station" do
  arch arm: "-aarch64"

  version "2.6.5"
  sha256 :no_check

  url "https://mixingstation.app/backend/api/web/download/attachment/mixing-station-pc/release/macos#{arch}"
  name "Mixing Station"
  desc "Audio mixer controller"
  homepage "https://mixingstation.app/"

  livecheck do
    url "https://mixingstation.app/backend/api/web/changelogs/milestones"
    strategy :json do |json|
      json["data"]&.map do |item|
        next if item["variant"] != "Desktop"

        item.dig("current", "version")
      end
    end
  end

  app "Mixing Station.app"

  zap trash: [
    "~/Library/Saved Application State/org.devcore.mixingstation.pc.savedState",
    "~/MixingStation",
  ]
end
