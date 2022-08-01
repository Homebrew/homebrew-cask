cask "lookin" do
  version "1.0.1,8"
  sha256 "59368d8cd30e52e1852c79dce8bde02014d5bd282ae6306d0efed176e581a719"

  url "https://cdn.lookin.work/release/Lookin-#{version.csv.first.dots_to_hyphens}.zip"
  name "Lookin"
  homepage "https://lookin.work/"

  livecheck do
    url "https://lookin.work/release/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Lookin.app"
end
