cask "prepros" do
  arch arm: "-Mac"

  version "7.27.0"
  sha256 arm:   "53788d72c2d49299cd6fbda01c4d21fc9c13fdf54a1d18c050d84bb35c96f52f",
         intel: "3ed0fde46da8d961e209116a50cc681c1e32a8de0909a2730d9da70fc11302c3"

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

  depends_on macos: ">= :high_sierra"

  app "Prepros.app"

  zap trash: [
    "~/Library/Application Support/Prepros",
    "~/Library/Application Support/Prepros-#{version.major}",
    "~/Library/Preferences/io.prepros.prepros.plist",
    "~/Library/Saved Application State/io.prepros.prepros.savedState",
  ]
end
