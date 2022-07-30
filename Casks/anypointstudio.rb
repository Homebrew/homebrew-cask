cask "anypointstudio" do
  version "7.13"
  sha256 "0787195aa9d4adfdb5c1c01cc6e3d245eceb89828caed6c25b485f04871ab8e6"

  foldersuffix = version.patch.blank? ? ".0-GA" : "-U#{version.patch}"
  zipsuffix = version.patch.blank? ? ".0" : ""

  url "https://mule-studio.s3.amazonaws.com/#{version}#{foldersuffix}/AnypointStudio-#{version}#{zipsuffix}-macos64.zip",
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
