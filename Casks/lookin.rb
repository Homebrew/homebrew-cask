cask "lookin" do
  version "1.0.1"
  sha256 "7932c8f7dce671170f464e6ecd5daa0eff847e31838e3570d308e46638e00670"

  url "https://cdn.lookin.work/release/Lookin-#{version.dots_to_hyphens}.zip"
  name "Lookin"
  desc "App for iOS view debugging"
  homepage "https://lookin.work/"

  livecheck do
    url "https://lookin.work/release/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Lookin.app"
end
