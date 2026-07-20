cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "d5bbbddec6abc34bd86fa604d3e086deffdf1302dc5c667079f9ea786360bb72",
         intel: "205147eb40acdc0d2244c830d83479d476660e6176a477dc51ee3bc6c0c2e3a4"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}-#{arch}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"
end
