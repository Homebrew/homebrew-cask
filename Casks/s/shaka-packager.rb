cask "shaka-packager" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "97acc637f83a3967e576612c2a627346f3a271bc018949c8e28b076b9cc517fc",
         intel: "74f9236605042d364e55967e1679dcd6b7a9b3fdf6c66a40175090d27a3c24c6"

  url "https://github.com/shaka-project/shaka-packager/releases/download/v#{version}/packager-osx-#{arch}"
  name "Shaka Packager"
  desc "Packager for DASH and HLS streaming"
  homepage "https://github.com/shaka-project/shaka-packager"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "packager-osx-#{arch}", target: "packager"

  # No zap stanza required
end
