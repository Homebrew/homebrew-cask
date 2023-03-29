cask "opal" do
  version "0.26"
  sha256 "b7d95fa3188826d2a0332c596f960aa88ca706e2bdc00e7d9a26fc05834c0a46"

  url "https://opalcamera.sfo3.digitaloceanspaces.com/Opal%20#{version}.pkg",
      verified: "opalcamera.sfo3.digitaloceanspaces.com/"
  name "Opal"
  desc "Professional webcam software for the Opal C1"
  homepage "https://faqs.opal.camera/opal-build-#{version.no_dots}"

  livecheck do
    url "https://opalcamera.com/download"
    strategy :page_match
    regex(/Opal Build (\d+(?:\.\d+)*)/)
  end

  pkg "Opal #{version}.pkg"

  uninstall pkgutil: "com.opalcamera.OpalCamera"
end
