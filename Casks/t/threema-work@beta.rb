cask "threema-work@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta62"
  sha256 arm:   "395dd9a24ccf75a9bddf5e37f54d874cd01d9468f3b8a3d47c02602f062472be",
         intel: "22218400d2d519ad5a03b797690cb565026eeeac183475f4d4669aa08775b4cd"

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
