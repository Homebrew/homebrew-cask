cask "fastdmg" do
  version "1.0.3"
  sha256 "71d0854f7ed483b7e5b9bdad84e93377a617a1b3eff0d52a54fc79149e4f48ae"

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
