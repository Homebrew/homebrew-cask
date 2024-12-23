cask "fastdmg" do
  version "1.0.2"
  sha256 "405c99ee251ebe1a5f3e4cbec8b84e6211ee8b89e5abf0f50b7b2cee9567062a"

  url "https://sveinbjorn.org/files/software/fastdmg/FastDMG-#{version}.zip"
  name "FastDMG"
  desc "Alternative to Apple's DiskImageMounter app"
  homepage "https://sveinbjorn.org/fastdmg"

  livecheck do
    url "https://sveinbjorn.org/files/software/fastdmg/"
    regex(/href=.*?FastDMG[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :el_capitan"

  app "FastDMG.app"

  zap trash: "~/Library/Preferences/org.sveinbjorn.FastDMG.plist"
end
