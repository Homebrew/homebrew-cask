cask "keyshot" do
  version "11.2.1.5"
  sha256 "5be175a764bc7d64cf41fd1bc8bd429a55cb720b45c45469df495e18604111ab"

  url "https://download.keyshot.com/keyshot#{version.major}/keyshot_mac64_#{version}.pkg"
  name "KeyShot"
  desc "Real-time 3D rendering"
  homepage "https://www.keyshot.com/"

  livecheck do
    url "https://www.keyshot.com/dd/"
    regex(/href=.*?keyshot[._-]mac64[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*",
            delete:  "/Applications/KeyShot#{version.major}.app"
end
