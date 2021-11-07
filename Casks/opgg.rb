cask "opgg" do
  version "0.1.74"
  sha256 "b03f0f46cad196f7cf6cdeee06e0d49e115afe8ec2b3c33175752ed3b4eb06b3"

  url "https://opgg-desktop-patch.akamaized.net/OP.GG-#{version}.dmg",
      verified: "opgg-desktop-patch.akamaized.net/"
  name "OP.GG Desktop"
  desc "Game records and champion analysis"
  homepage "https://op.gg/desktop/"

  livecheck do
    url "https://desktop-app-update.s3.amazonaws.com/latest-mac.yml"
    strategy :page_match do |page|
      YAML.safe_load(page)["version"]
    end
  end

  app "OP.GG.app"

  zap trash: "~/Library/Application Support/opgg-electron-app"
end
