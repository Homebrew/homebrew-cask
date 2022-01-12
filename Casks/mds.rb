cask "mds" do
  version "4.0,40106"
  sha256 "29e53a23bb97cb260290c868dc92a31cdba359f98cbf6643742d367204c207f2"

  url "https://twocanoes-software-updates.s3.amazonaws.com/MDS_Build-#{version.csv.second}_Version-#{version.csv.first}.dmg",
      verified: "https://twocanoes-software-updates.s3.amazonaws.com/"
  name "MDS"
  desc "Deploy Intel and Apple Silicon Macs in Seconds"
  homepage "https://twocanoes.com/products/mac/mac-deploy-stick/"

  livecheck do
    url "https://twocanoes.com/products/mac/mac-deploy-stick/history/"
    regex(/MDS_Build-(\d+)_Version-(\d+(?:[._-]\d+)*)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  pkg "MDS.pkg"

  uninstall pkgutil:   "com.twocanoes.pkg.MDS",
            launchctl: "com.mds-micromdm"

  zap trash: [
    "/usr/local/mds-micromdm",
    "~/Library/Application Support/MDS",
    "~/Library/Application Support/com.twocanoes.mds.sync",
    "~/Library/Logs/com.twocanoes.mds.log",
    "~/Library/Preferences/com.apple.imdsmsrecordstore.plist",
    "/Library/LaunchDaemons/com.twocanoes.mdshelpertool.plist",
    "/Library/PrivilegedHelperTools/com.twocanoes.mdshelpertool",
  ]
end
