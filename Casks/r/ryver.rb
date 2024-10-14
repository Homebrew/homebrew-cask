cask "ryver" do
  version "1.3.3"
  sha256 "8186020f264ef51c94430321710c74f3043b34aabb08be29fafe1e7b4aa1c3ae"

  url "https://downloads.ryver.com/mac/ryver-#{version}.zip"
  name "Ryver"
  desc "Team communication and collaboration software"
  homepage "https://ryver.com/"

  livecheck do
    url "https://downloads.ryver.com/mac/stable"
    strategy :header_match
  end

  container nested: "Ryver-#{version}.dmg"

  app "Ryver.app"

  caveats do
    requires_rosetta
  end
end
