cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta66"
  sha256 arm:   "6203c83a181672783447254ce390a7922dad99eff38fc0f605125a0091709077",
         intel: "55ddd3491c7569c2e721b7e9a67eb780e331d5418d2b3a9d681af31397d458b9"

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

  depends_on macos: :monterey

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
