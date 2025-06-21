cask "inav-configurator" do
  arch arm: "arm64", intel: "x64"

  version "8.0.1"
  sha256 arm:   "235919b9f98b7560dddce10e4e5e4107c56f5f9edce14d69b5acbea9bf758837",
         intel: "61ffc113f93ef7ff6b19c208006f96773170e4beb1afd934b819a70ad598a0e3"

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_MacOS_#{arch}_#{version}.zip"
  name "INAV Configurator"
  desc "Configuration tool for the INAV flight control system"
  homepage "https://github.com/iNavFlight/inav-configurator/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "INAV Configurator.app"

  zap trash: [
    "~/Library/Application Support/inav-configurator",
    "~/Library/Caches/inav-configurator",
    "~/Library/Preferences/com.nw-builder.inav-configurator.plist",
    "~/Library/Saved Application State/com.nw-builder.inav-configurator.savedState",
  ]
end
