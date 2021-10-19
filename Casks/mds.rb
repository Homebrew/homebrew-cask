cask "mds" do
  version "4.0,40106"
  sha256 "29e53a23bb97cb260290c868dc92a31cdba359f98cbf6643742d367204c207f2"

  url "https://twocanoes-software-updates.s3.amazonaws.com/MDS_Build-#{version.after_comma}_Version-#{version.before_comma}.dmg",
      verified: "https://twocanoes-software-updates.s3.amazonaws.com/"
  name "MDS"
  desc "Deploy Intel and Apple Silicon Macs in Seconds"
  homepage "https://twocanoes.com/products/mac/mac-deploy-stick/"

  pkg "MDS.pkg"

  uninstall pkgutil:   "com.twocanoes.pkg.MDS",
            launchctl: "com.mds-micromdm"

  zap trash: [
    "/usr/local/mds-micromdm",
  ]
end
