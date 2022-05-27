cask "anypointstudio" do
  version "7.12.1"
  sha256 "27ca9ada203d4ef101aaad744b69830fafd29c2b85b784e03ed57cd8954ee75f"

  vsuffix = version.patch == "0" ? "GA" : "U#{version.patch}"

  url "https://mule-studio.s3.amazonaws.com/#{version}-#{vsuffix}/AnypointStudio-#{version}-macos64.zip",
      verified: "mule-studio.s3.amazonaws.com/"
  name "Anypoint Studio"
  desc "Eclipse-based IDE for designing and testing Mule applications"
  homepage "https://www.mulesoft.com/platform/studio"

  livecheck do
    url "https://docs.mulesoft.com/release-notes/studio/anypoint-studio"
    regex(/Anypoint\s+Studio\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "AnypointStudio.app"
end
