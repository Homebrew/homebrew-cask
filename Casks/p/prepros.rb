cask "prepros" do
  arch arm: "-Mac"

  version "7.39.1"
  sha256 arm:   "b3744379c9212c38b6895481b01c6880f03420be488807d1129b0587abb1ce6e",
         intel: "14079b21f18e38640914d3300c2366eaf35860af5c3a3c0ab6ffb8bcbae4895e"

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
