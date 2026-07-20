cask "hop" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "c1fd779a7e3c47bc5fa6a2344eb6d8134fd201a435e484f86be6f8ebc8963574",
         intel: "202a68e829a8f2ab73362319954bc8ea94d6dfb27effc8dd951ff6e486e99d14"

  url "https://github.com/golbin/hop/releases/download/v#{version}/HOP-macos-#{arch}.dmg",
      verified: "github.com/golbin/hop/"
  name "HOP"
  desc "View and edit HWP documents"
  homepage "https://golbin.github.io/hop/"

  depends_on macos: :monterey

  app "HOP.app"

  zap trash: [
    "~/Library/Application Support/net.golbin.hop",
    "~/Library/Caches/net.golbin.hop",
    "~/Library/Logs/net.golbin.hop",
    "~/Library/WebKit/net.golbin.hop",
  ]
end
