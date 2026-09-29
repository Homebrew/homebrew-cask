cask "deepseek-harness" do
  version "0.2.0-rc.2"
  sha256 "7c32c459c403d8a035ac60600f240ed2025312f0a7afde283f454f30ec4ed96e"

  url "https://download.deepseek.com/dsh-desk/bin/mac-arm64/deepseek-harness-#{version}-mac-arm64.dmg"
  name "DeepSeek Harness"
  desc "Open-source agent harness developed by DeepSeek AI"
  homepage "https://www.deepseek.com/en/harness/"

  livecheck do
    url "https://download.deepseek.com/dsh-desk/feeds/mac-arm64/nightly-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "DeepSeek Harness.app"
end
