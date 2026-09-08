cask "eddie" do
  arch arm: "arm64", intel: "x64"

  version "2.26.2"
  sha256 arm:   "783d5180c3d0c30524e4faf87e83e44ec20d293a1c3292eb222f52cb6c47f041",
         intel: "c23d79a15fe0a890c8f6679d8a58f03914266d54a6b4a1371c1dadfce786b686"

  url "https://eddie.website/repository/eddie/#{version}/eddie-ui_#{version}_macos-10.15_#{arch}_disk.dmg"
  name "Air VPN"
  name "Eddie"
  desc "OpenVPN UI"
  homepage "https://eddie.website/"

  # The homepage provides version information but it will frequently timeout.
  # We check GitHub releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/AirVPN/Eddie"
    strategy :github_latest
  end

  depends_on :macos

  app "Eddie.app"

  uninstall quit: "com.eddie.client"

  zap trash: [
    "~/.config/eddie",
    "~/Library/Preferences/org.airvpn.eddie.ui.plist",
  ]

  caveats do
    requires_rosetta
  end
end
