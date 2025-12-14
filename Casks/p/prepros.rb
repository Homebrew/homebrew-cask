cask "prepros" do
  arch arm: "-Mac"

  version "7.29.0"
  sha256 arm:   "4dc85ff4e92a757eb2cfa40b59800041d6bb375aad489f7d513f79aa55270441",
         intel: "dba911f59ca2f678ccb2bf067b02665ea779a7d323a3e3240e372ff3f1dd4707"

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
