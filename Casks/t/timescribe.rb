cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "94d22018d7ddc449d4632c11864c74d6bc39d600c45acb4e12a10ea68d8f7a17",
         intel: "196da6b934803544d509eebd9e27e6db8d92dec2335c4f4838ef5d03ac703899"

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
