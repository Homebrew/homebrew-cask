cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "623770ba076e365b96b0010cdf718fa2b38ca38ac9f2a430f1376808eb2ef2db",
         intel: "51e0789660f03e155e236091b78c1c1a7a7f4b4af4573efba28e383ac9de9a88"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}-#{arch}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"
end
