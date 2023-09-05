cask "threema-2" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta20"
  sha256 arm:   "5926e2537a1e7c4b71a3ffbf4f0910450e22f91db3558e8614071143858cd55e",
         intel: "d7f79a7bb625a197e7a54165cacffbe50372c2ffb308dadea9d70cdb1f3f836f"

  url "https://releases.threema.ch/desktop/#{version}/threema-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema Desktop Beta"
  desc "End-to-end encrypted instant messaging (Currently only usable with iOS Beta)"
  homepage "https://threema.ch/en/download-md"

  livecheck do
    url "https://releases.threema.ch/desktop/latest-version-consumer-macos.json"
    strategy :json do |json|
      json["latestVersion"]["version"]
    end
  end

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop/consumer-live-default/",
  ]
end
