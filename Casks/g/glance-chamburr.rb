cask "glance-chamburr" do
  version "1.5.4"
  sha256 "f2df114e83b8b834c2da9d4cfbd4d3307a8f0563a9e613bfdd88b4b3bffe61ad"

  url "https://github.com/chamburr/glance/releases/download/v#{version}/Glance-#{version}.dmg"
  name "Glance"
  desc "Utility to provide quick look previews for files that aren't natively supported"
  homepage "https://github.com/chamburr/glance"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Glance.app"

  zap trash: [
    "~/Library/Application Scripts/com.chamburr.Glance",
    "~/Library/Application Scripts/com.chamburr.Glance.QLPlugin",
    "~/Library/Containers/com.chamburr.Glance",
    "~/Library/Containers/com.chamburr.Glance.QLPlugin",
  ]

  caveats <<~EOS
    You must start #{appdir}/Glance.app once manually to setup the Quick Look plugin.
  EOS
end
