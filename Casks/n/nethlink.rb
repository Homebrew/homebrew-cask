cask "nethlink" do
  version "1.1.1"
  sha256 "c3fc2f4589d15b5be3854e62f918c4ce34a65ececd53da8e237ebacb97fcc144"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  depends_on macos: ">= :catalina"

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"

  caveats do
    requires_rosetta
  end
end
