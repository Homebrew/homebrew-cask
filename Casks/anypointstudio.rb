cask "anypointstudio" do
  version "7.11.1"
  sha256 "417be2b9b60674eb1709e97d1566c23529cf3920afc0ab9d3eec0faca54446b6"

  url "https://mule-studio.s3.amazonaws.com/#{version}-U1/AnypointStudio-#{version}-macos64.zip",
      verified: "mule-studio.s3.amazonaws.com/"
  name "Anypoint Studio"
  desc "Eclipse-based IDE for designing and testing Mule applications"
  homepage "https://www.mulesoft.com/platform/studio"

  livecheck do
    skip "No version information available"
  end

  app "AnypointStudio.app"
end
