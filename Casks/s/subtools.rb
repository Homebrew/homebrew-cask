cask "subtools" do
  version "1.0.1"
  sha256 "2557e042d1df12dacfe5d87ff6c96d252721f3d10a26dbb7f8dc2e3ac6248e91"

  url "https://www.emmgunn.com/downloads/subtools#{version}.zip"
  name "SUBtools"
  desc "Helper-application for MP4tools, MKVtools, and AVItools"
  homepage "https://www.emmgunn.com/subtools-home/"

  livecheck do
    url "https://emmgunn.com/wp/subtools-home/subtools-downloads/"
    regex(/href=.*?subtools[._-]?v?(\d+(?:\.\d+)+)\.zip/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "subtools#{version}/SUBtools.app"

  zap trash: [
    "~/Library/Application Support/EmmGunn",
    "~/Library/Preferences/com.emmgunn.SUBtools.plist",
  ]

  caveats do
    requires_rosetta
  end
end
