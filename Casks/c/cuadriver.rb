cask "cuadriver" do
  version "0.57.0"
  sha256 "e0a95a437dd6f6f0774886052646e62f61a5e77bc511d4a6f5a83efadaad117d"

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
