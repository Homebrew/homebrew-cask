cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "f8b1bd255292ae4cfa09e0f817a88b43107cbf3174d54aad48ca9f2cb5779182",
         intel: "552f4c3fb2eff9b7decea16619773ef210474c540bcd511a50e3ac3297304930"

  url "https://github.com/WINBIGFOX/TimeScribe/releases/download/v#{version}/TimeScribe-#{version}-#{arch}.zip",
      verified: "github.com/WINBIGFOX/TimeScribe/"
  name "TimeScribe"
  desc "Working time tracker"
  homepage "https://timescribe.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "TimeScribe.app"

  zap trash: "~/Library/Application Support/timescribe"
end
