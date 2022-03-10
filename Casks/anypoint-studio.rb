cask "anypoint-studio" do
  version "7.11.1"
  sha256 :no_check

  url "https://mule-studio.s3.amazonaws.com/7.11.1-U1/AnypointStudio-7.11.1-macos64.zip",
      verified: "mule-studio.s3.amazonaws.com/"
  name "Anypoint Studio"
  desc "MuleSoft’s Eclipse-based IDE for designing and testing Mule applications"
  homepage "https://www.mulesoft.com/"

  app "AnypointStudio.app"
end
