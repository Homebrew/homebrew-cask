cask "prepros" do
  arch arm: "-Mac"

  version "7.40.2"
  sha256 arm:   "734c5a86c92d02a67b0b7447be6896863ab93c293751d9f41b51d273ed02f015",
         intel: "f01cbcc9a3b9b202024065308d84f7ca9a2be700d57a891da9ca96fae7116c63"

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
