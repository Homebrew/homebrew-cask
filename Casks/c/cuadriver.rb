cask "cuadriver" do
  version "0.30.4"
  sha256 "9c75a186f89352fb522dc67791575f8c9e8081a38795af2706e103d41fa72be4"

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
