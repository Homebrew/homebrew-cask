cask "glance-chamburr" do
  version "1.5.0"
  sha256 "26d3f18c332a8be6ab4c9dda513348c036d438bf676e76d3d4e4c6ef28137388"

  url "https://github.com/chamburr/glance/releases/download/v#{version}/Glance-#{version}.dmg"
  name "Glance"
  desc "Utility to provide quick look previews for files that aren't natively supported"
  homepage "https://github.com/chamburr/glance"

  depends_on macos: ">= :catalina"

  app "Glance.app"

  zap trash: [
    "~/Library/Application Scripts/com.chamburr.Glance",
    "~/Library/Application Scripts/com.chamburr.Glance.QLPlugin",
    "~/Library/Containers/com.chamburr.Glance",
    "~/Library/Containers/com.chamburr.Glance.QLPlugin",
  ]

  caveats <<~EOS
    You must start #{appdir}/Glance.app once manually to setup the QuickLook plugin.
  EOS
end
