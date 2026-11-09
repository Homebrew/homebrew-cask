cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta66"
  sha256 arm:   "03ec7b6f5c7ede7a35ba26186a796172d32f0cbfa48ad6d08ae8aacb109adc3b",
         intel: "508f1dac39e2768b12f481286ab6ff8b797b6aff837d817ffadfdeb15153598e"

  url "https://releases.threema.ch/desktop/#{version}/threema-work-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema Work"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/en/download/threema-work/desktop-beta"

  livecheck do
    url "https://releases.threema.ch/desktop/latest-version-work-macos.json"
    strategy :json do |json|
      json.dig("latestVersion", "version")
    end
  end

  depends_on macos: :monterey

  app "Threema Work Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-work-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-work-desktop.savedState",
  ]
end
