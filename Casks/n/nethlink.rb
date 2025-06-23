cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "2aa31ea497f41dc7e24e62f15292748ec19ccdfb29fdaffb89dcced46ce430b9",
         intel: "5a3b1085b8493a5f6a9d7691f5c963bc60ca0b8e6ed599d2952a5b72cb3822f4"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}-#{arch}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :catalina"

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"
end
