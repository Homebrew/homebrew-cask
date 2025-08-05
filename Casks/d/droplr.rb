cask "droplr" do
  version "5.9.19,478"
  sha256 "d2d0741f7caad6bae1d9db9a97f09d21fc2086c3d1155c3427542842b8ab9402"

  url "https://files.droplr.com/apps/mac/Droplr#{version.csv.first.no_dots}-#{version.csv.second}.zip"
  name "Droplr"
  desc "Screenshot and screen recorder"
  homepage "https://droplr.com/"

  livecheck do
    url "https://files.droplr.com/apps/appcast/appcast-sandbox-v2.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "Droplr#{version.csv.first.no_dots}-#{version.csv.second}.pkg"

  uninstall pkgutil: "com.droplr.droplr-mac"

  zap trash: [
    "~/Library/Application Scripts/com.droplr.droplr-mac",
    "~/Library/Containers/com.droplr.droplr-mac",
  ]
end
