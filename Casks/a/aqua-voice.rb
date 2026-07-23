cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.17.2"
  sha256 arm:   "1cd75f0e6c58cf5ea4a4fc35689aaa003d4fa26726cc24abbb7fef2d39aca648",
         intel: "a7bd44419154861a6950af31e027530d51674956d0fe79cf19e3ebcb3d6a5d63"

  url "https://updates.aquavoice.com/stable/darwin/#{arch}/Aqua%20Voice-darwin-#{arch}-#{version}.zip"
  name "Aqua Voice"
  desc "Speech-to-text system"
  homepage "https://aquavoice.com/"

  livecheck do
    url "https://aqua-desktop-builds.s3.amazonaws.com/aqua-voice-updates/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Aqua Voice.app"

  zap trash: [
    "~/Library/Application Support/Aqua Voice",
    "~/Library/Caches/com.electron.aqua-voice",
    "~/Library/Logs/Aqua Voice",
  ]
end
