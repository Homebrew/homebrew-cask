cask "mds" do
  version :latest
  sha256 :no_check

  url "https://twocanoes-software-updates.s3.amazonaws.com/MDS.dmg",
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
