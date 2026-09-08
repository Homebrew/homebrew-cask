cask "prepros" do
  arch arm: "-Mac"

  version "7.40.1"
  sha256 arm:   "164bd36ebd024212d39981549e1a9319ce8d685d323f40d3df5a57d6fed26408",
         intel: "4ec3890d9e5d1022b0078d77caa4d80fc40493b4ed62d7552ce1ace3a75f546e"

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
