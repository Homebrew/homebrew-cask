cask "foresight" do
  version "1.0.0"
  sha256 :no_check

  url "https://dl.google.com/foresight-mac/foresight_mac.dmg"
  name "Google AI Edge Foresight"
  desc "On-device meeting transcription and note-taking assistant"
  homepage "https://developers.google.com/edge/foresight"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.google.AIEdgeForesight"]&.short_version
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Foresight.app"

  uninstall quit:   "com.google.AIEdgeForesight",
            script: {
              executable:   "/usr/bin/pkill",
              args:         ["-x", "ForesightHelper"],
              must_succeed: false,
            }

  zap trash: [
    "~/Library/Application Support/com.google.AIEdgeForesight",
    "~/Library/Preferences/com.google.AIEdgeForesight.plist",
  ]
end
