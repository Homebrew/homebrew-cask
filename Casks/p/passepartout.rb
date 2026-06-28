cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.9.0"
  sha256 arm:   "94b325163a1335ddd0b32e26b3cd02d0a44be0ab442fbf78fd576fb0eb664ee7",
         intel: "d763d5b5c12aeb22b3eca2bfcf74ff49e3cf2677308a6d16694554d70382bcdf"

  url "https://github.com/passepartoutvpn/passepartout/releases/download/v#{version}/Passepartout.#{arch}.dmg",
      verified: "github.com/passepartoutvpn/passepartout/"
  name "Passepartout"
  desc "OpenVPN and WireGuard client"
  homepage "https://passepartoutvpn.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Passepartout.app"

  zap trash: [
    "~/Library/Application Scripts/com.algoritmico.mac.Passepartout",
    "~/Library/Application Scripts/DTDYD63ZX9.group.com.algoritmico.Passepartout",
    "~/Library/Containers/com.algoritmico.mac.Passepartout",
    "~/Library/Group Containers/DTDYD63ZX9.group.com.algoritmico.Passepartout",
  ]
end
