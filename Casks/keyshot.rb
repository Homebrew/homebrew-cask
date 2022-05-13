cask "keyshot" do
  version "11.1.0.46"
  sha256 "bf8d25fb420b048ec2653ce7d6628322400d1c43d69c451371628485f6fd19a1"

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
