cask "prepros" do
  arch arm: "-Mac"

  version "7.35.0"
  sha256 arm:   "6094396087f73c966bc1aff0e7895e612138687cc3af7351c85a57b5bbcb45ad",
         intel: "84acc5a15f9d0cff90ab24b593fff0746e439cc7bd70e9053ee259b74653c289"

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
