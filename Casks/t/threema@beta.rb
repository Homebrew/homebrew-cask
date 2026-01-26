cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta59"
  sha256 arm:   "20ec1ee9716e26d68f1c1ab6de0750507925a02c6ecf533a54aac1c536645918",
         intel: "1630f63cc2c7ed29e154a181a12b2c4e6fbdd30b0cda6399cc656605aad0ac02"

  url "https://releases.threema.ch/desktop/#{version}/threema-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/download-md"

  livecheck do
    url "https://releases.threema.ch/desktop/latest-version-consumer-macos.json"
    strategy :json do |json|
      json.dig("latestVersion", "version")
    end
  end

  depends_on macos: ">= :monterey"

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
