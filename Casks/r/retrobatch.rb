cask "retrobatch" do
  version "2.0.1"
  sha256 "a354417fd3cc080e5011adc74015de0fa8923f72e9d106d92a548fe4325a6cda"

  url "https://flyingmeat.com/download/Retrobatch-#{version}.zip"
  name "Retrobatch"
  desc "Batch image processor"
  homepage "https://flyingmeat.com/retrobatch/"

  livecheck do
    url "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Retrobatch.app"
end
