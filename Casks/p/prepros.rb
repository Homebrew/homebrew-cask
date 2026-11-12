cask "prepros" do
  arch arm: "-Mac"

  version "7.40.5"
  sha256 arm:   "2859d1f737a8a9cdae8b6f94a99d659ac0f9c2a2b6f48a933e0ce49163b5aef8",
         intel: "d08db73f4f5dce983a6e2a1d53ffcc6c97cad0d067880011b0b55ee7a6689f0c"

  url "https://downloads.prepros.io/v#{version.major}/#{version}/Prepros#{arch}-#{version}.zip"
  name "Prepros"
  desc "Web development companion"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/api/v#{version.major}/version/darwin/stable"
    strategy :json do |json|
      json.dig("data", "version")
    end
  end

  depends_on :macos

  app "Prepros.app"

  zap trash: [
    "~/Library/Application Support/Prepros",
    "~/Library/Application Support/Prepros-#{version.major}",
    "~/Library/Preferences/io.prepros.prepros.plist",
    "~/Library/Saved Application State/io.prepros.prepros.savedState",
  ]
end
