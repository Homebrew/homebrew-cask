cask "cuadriver" do
  version "0.33.4"
  sha256 "bf90ac5db76f44baff47e256cb7355959be3e8df3706b9d178505720f02d74c1"

  url "https://github.com/trycua/cua/releases/download/cua-driver-rs-v#{version}/cua-driver-rs-#{version}-darwin-universal.tar.gz"
  name "Cua Driver"
  desc "Background desktop automation driver for AI agents"
  homepage "https://cua.ai/cua-driver"

  livecheck do
    url :url
    regex(/^cua[._-]driver[._-]rs[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  app "cua-driver-rs-#{version}-darwin-universal/CuaDriver.app"
  binary "#{appdir}/CuaDriver.app/Contents/MacOS/cua-driver"

  uninstall launchctl: "application.com.trycua.driver.*",
            quit:      "com.trycua.driver"

  zap trash: [
    "~/.cua-driver",
    "~/Library/Application Support/cua-driver",
    "~/Library/Caches/cua-driver",
  ]
end
