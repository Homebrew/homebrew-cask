cask "cljstyle" do
  arch arm: "arm64", intel: "amd64"

  version "0.16.626"
  sha256 arm:   "28d88717199ae12720cdb23fa3672203b87b92f73b86f12a42358e5f7067f9ec",
         intel: "86064430f03c048cbe68810625c64e750837c757a04b201f8ff2660bd55d5ba3"

  url "https://github.com/greglook/cljstyle/releases/download/#{version}/cljstyle_#{version}_macos_#{arch}.zip"
  name "cljstyle"
  desc "Tool for formatting Clojure code"
  homepage "https://github.com/greglook/cljstyle"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cljstyle"

  # No zap stanza required
end
