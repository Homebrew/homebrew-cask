cask "djv" do
  version "1.3.0"
  sha256 "5702e1a084377e0c0486b68c0fb5014b4e7aa3f4dbcd61bd489359859ad7589f"

  url "https://downloads.sourceforge.net/djv/djv-stable/#{version}/DJV-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/djv/"
  name "DJV Imaging"
  desc "Review software for VFX, animation, and film production"
  homepage "https://darbyjohnston.github.io/DJV/"

  livecheck do
    url "https://sourceforge.net/projects/djv/rss?path=/djv-stable"
  end

  app "DJV.app"
end
