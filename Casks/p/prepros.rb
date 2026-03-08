cask "prepros" do
  arch arm: "-Mac"

  version "7.39.0"
  sha256 arm:   "86fa98db4a4ae73d6fc9c5988f3fdbd2430e788245da2ea8b1511ceb8ef58217",
         intel: "07ab09a642e3ccef51feef7db36ffeb00052de4be1647b0eebbd7ca5c3fec99c"

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
