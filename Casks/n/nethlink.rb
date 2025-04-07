cask "nethlink" do
  version "1.1.0"
  sha256 "9d3682d87b2362e25fb6f930c84dfbdfb6795507f36ede70bd9751746b8971f4"

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
