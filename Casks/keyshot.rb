cask "keyshot" do
  version "11.0.0.215"
  sha256 "50d9a93b40f7a58fae073912cd8544b5067a6698c5da0220290917fcb3bf1ab5"

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
