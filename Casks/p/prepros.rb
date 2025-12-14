cask "prepros" do
  arch arm: "-Mac"

  version "7.34.0"
  sha256 arm:   "d85711b7c5245d09dbd7dc2d216891546a63ecc467c01a46d4c7b6f02bec430e",
         intel: "9fe9712a8ffe48bda0eaf242d41fa942a38f7eecf4e40540254edcb7680aff53"

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
