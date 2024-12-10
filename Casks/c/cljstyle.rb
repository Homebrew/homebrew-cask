cask "cljstyle" do
  arch arm: "arm64", intel: "amd64"

  version "0.17.642"
  sha256 arm:   "34d7798e94a63fac46c85c66cd3a1e6132ce06e369eab7ffbf0212ae8bbf8c85",
         intel: "fa0226a3bad13f9b76fb797b0c0771d10e7ee6adc871e1d43841281046293117"

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
