# typed: strict
# frozen_string_literal: true

cask "picmal" do
  version "1.3.5"
  sha256 "de12994e502004720f51e34ca8bc8a2d7e8eb72ee0ec96118757623336dd9ea5"

  url "https://github.com/albertogalca/picmal-releases/releases/download/v#{version}/Picmal.dmg",
      verified: "github.com/albertogalca/picmal-releases/"
  name "Picmal"
  desc "Convert and compress your media files locally"
  homepage "https://picmal.app/"

  livecheck do
    url "https://github.com/albertogalca/picmal-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Picmal.app"

  zap trash: [
    "~/Library/Application Support/com.albertogallego.picmal",
    "~/Library/Caches/com.albertogallego.picmal",
    "~/Library/Preferences/com.albertogallego.picmal.plist",
    "~/Library/Saved Application State/com.albertogallego.picmal.savedState",
  ]
end
