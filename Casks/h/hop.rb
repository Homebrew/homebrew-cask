cask "hop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.11"
  sha256 arm:   "de93fba864253421f3a4f50377b2f75c11dea53d38c2ab31dc1ff4ca31aa31e4",
         intel: "82ba69114d7eda1e2d61f0d8cbaba217c5be5423ed9997aabd5e99dc821b28ee"

  url "https://github.com/golbin/hop/releases/download/v#{version}/HOP-macos-#{arch}.dmg",
      verified: "github.com/golbin/hop/"
  name "HOP"
  desc "View and edit HWP documents"
  homepage "https://golbin.github.io/hop/"

  depends_on :macos

  app "HOP.app"

  zap trash: [
    "~/Library/Application Support/net.golbin.hop",
    "~/Library/Caches/net.golbin.hop",
    "~/Library/Logs/net.golbin.hop",
    "~/Library/WebKit/net.golbin.hop",
  ]
end
