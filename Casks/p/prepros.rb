cask "prepros" do
  arch arm: "-Mac"

  version "7.40.3"
  sha256 arm:   "5edb5c97bef32d2aea9836bb8587412e3c94ab91396480faad1f5881eb47a0b6",
         intel: "74d61e6e910889a3c463c940d6895f49b07532a373e64642f7904a99ea4c0ae6"

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
