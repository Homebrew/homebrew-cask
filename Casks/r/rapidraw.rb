cask "rapidraw" do
  arch arm: "macos-14_aarch64", intel: "macos-15-intel_x64"

  version "1.6.0"
  sha256 arm:   "badcd5c35b39e57fde91c88b54fd94c89b403db84666beb4c39d6ca9cc5ee826",
         intel: "3cdf964c5488e00c139dc3d1e1fe639a2c9bf3ef71b6bbe14fc12149aaa3062e"

  url "https://github.com/CyberTimon/RapidRAW/releases/download/v#{version}/02_RapidRAW_v#{version}_#{arch}.dmg"
  name "RapidRAW"
  desc "Open-source RAW photo editor"
  homepage "https://github.com/CyberTimon/RapidRAW"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RapidRAW.app"

  zap trash: "~/Library/Application Support/io.github.CyberTimon.RapidRAW"
end
