cask "fluid" do
  version "2.1.2"
  sha256 "cf58c480f631d2adc050b423e65776e253f52989ade9c1aaf8d77b8ced63a653"

  url "https://fluidapp.com/dist/Fluid_#{version}.zip"
  name "Fluid"
  desc "Tool to turn a website into a desktop app"
  homepage "https://fluidapp.com/"

  livecheck do
    url "https://fluidapp.com/appcast/fluid#{version.major}.rss"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Fluid.app"

  zap trash: [
    "~/Library/Application Support/Fluid",
    "~/Library/Caches/com.fluidapp.Fluid#{version.major}",
    "~/Library/Preferences/com.fluidapp.Fluid*",
    "~/Library/Saved Application State/com.fluidapp.Fluid*",
  ]

  caveats do
    requires_rosetta
  end
end
