cask "cuadriver" do
  version "0.52.3"
  sha256 "6e2ea4c0c18835469d9964a2e2d2ee7d199ebbec2ddeff1b75b4f88dc738341c"

  url "https://github.com/trycua/cua/releases/download/cua-driver-rs-v#{version}/cua-driver-rs-#{version}-darwin-universal.tar.gz"
  name "Cua Driver"
  desc "Background desktop automation driver for AI agents"
  homepage "https://cua.ai/cua-driver"

  livecheck do
    url :url
    regex(/^cua[._-]driver[._-]rs[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
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
