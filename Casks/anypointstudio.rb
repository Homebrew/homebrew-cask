cask "anypointstudio" do
  version "7.14.0"
  sha256 "a23db6aa8bf1b127241ef637b4547b617d73cd7834cf4058a5202ec578e6653b"

  vsuffix = (version.patch == "0") ? "GA" : "U#{version.patch}"

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
