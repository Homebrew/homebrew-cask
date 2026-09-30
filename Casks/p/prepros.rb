cask "prepros" do
  arch arm: "-Mac"

  version "7.40.4"
  sha256 arm:   "ab316ba6c072efdc045eea8a9e670a7e20eb363d58fde9b651a194aaff7d55ae",
         intel: "efb858d618c1d2d23394b6dd916c9b9ae811bf7730dfdbe6080bd9907ece619b"

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
