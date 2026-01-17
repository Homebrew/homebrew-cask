cask "inav-configurator" do
  arch arm: "arm64", intel: "x64"

  version "9.0.0"
  sha256 arm:   "b929f8e7c648dd401f084ff719923d8cae5eb8ea682058d57c0690b14a268499",
         intel: "872b35c753f8d1c73034c8f3f5bd43c1fa5430004a6338613138c855ad5b6cdb"

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_MacOS_#{arch}_#{version}.zip"
  name "INAV Configurator"
  desc "Configuration tool for the INAV flight control system"
  homepage "https://github.com/iNavFlight/inav-configurator/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "INAV Configurator.app"

  zap trash: [
    "~/Library/Application Support/inav-configurator",
    "~/Library/Caches/inav-configurator",
    "~/Library/Preferences/com.nw-builder.inav-configurator.plist",
    "~/Library/Saved Application State/com.nw-builder.inav-configurator.savedState",
  ]
end
