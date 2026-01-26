cask "prepros" do
  arch arm: "-Mac"

  version "7.37.0"
  sha256 arm:   "f52a63192492df34ad887f7a98038886231bd69d550891a409ed6c3dd067a8cb",
         intel: "76b579b79737a06ab87e55485dac13913684ef81fe7f2a0b916cdde56e696faf"

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

  app "Prepros.app"

  zap trash: [
    "~/Library/Application Support/Prepros",
    "~/Library/Application Support/Prepros-#{version.major}",
    "~/Library/Preferences/io.prepros.prepros.plist",
    "~/Library/Saved Application State/io.prepros.prepros.savedState",
  ]
end
