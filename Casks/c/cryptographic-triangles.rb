cask "cryptographic-triangles" do
  version "5.3.6"
  sha256 "3a58e795d898656b455fd639c0ea826a4457d390a64d00ace9a1257598d053be"

  url "https://github.com/SamiAhmed7777/triangles_v5/releases/download/v#{version}/Cryptographic-Triangles-v#{version}-macos-arm64.dmg",
      verified: "github.com/SamiAhmed7777/triangles_v5/"
  name "Cryptographic Triangles"
  desc "TRI cryptocurrency wallet with staking and encrypted messaging"
  homepage "https://cryptographic-triangles.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Triangles-Qt.app"

  zap trash: [
    "~/.triangles",
    "~/Library/Preferences/org.cryptographic-triangles.Triangles-Qt.plist",
  ]
end
