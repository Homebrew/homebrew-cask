cask "keyshot" do
  version "11.3.1.3"
  sha256 "6b316a6c2e4fffd0acfe3aa681f935311949b466e547935933972ace716ece6f"

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
