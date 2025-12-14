cask "prepros" do
  arch arm: "-Mac"

  version "7.33.0"
  sha256 arm:   "a7bbb8a408176bff4c08c36c6b18914f97aab3101f075a26b607f3b26df46cd3",
         intel: "3a63a2c2853bf41bdc919dac015e520b3925390fe6521226ed4cc575e797db27"

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
