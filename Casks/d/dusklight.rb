cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.0"
  sha256 arm:   "06375a1a5a171cafd0533b1d053bd5f1816275bef60db5f278f9d322c56b0e91",
         intel: "8d950f52a22d8122e31abfddfbc347f4880fcee9ac0866f7d229597ace868b85"

  url "https://github.com/TwilitRealm/dusklight/releases/download/v#{version}/Dusklight-v#{version}-macos-#{arch}.zip",
      verified: "github.com/TwilitRealm/dusklight/"
  name "Dusklight"
  desc "Reverse-engineered reimplementation of Twilight Princess"
  homepage "https://twilitrealm.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Dusklight.app"

  zap trash: "~/Library/Application Support/TwilitRealm"
end
