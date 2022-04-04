cask "anypointstudio" do
  version "7.12.0"
  sha256 "03560aa3e96b5467305d87c5961703c92285b92f396b6be861c6b0ceb91b167c"

  url "https://mule-studio.s3.amazonaws.com/#{version}-GA/AnypointStudio-#{version}-macos64.zip",
      verified: "mule-studio.s3.amazonaws.com/"
  name "Anypoint Studio"
  desc "Eclipse-based IDE for designing and testing Mule applications"
  homepage "https://www.mulesoft.com/platform/studio"

  livecheck do
    url "https://docs.mulesoft.com/release-notes/studio/anypoint-studio"
    regex(/Anypoint\s+Studio\s+v?(\d+(?:\.\d+)+)/i)
  end

  app "AnypointStudio.app"
end
