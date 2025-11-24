cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "0e5c836dc0522c441f2ea0227732f51d39706b1fb584a124d8a69f1253b8cbac",
         intel: "4bc236926395628082e6f48234242579597949262d2027d1455a0ec227878e6d"

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
