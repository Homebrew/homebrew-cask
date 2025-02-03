cask "deepseek-desktop" do
  version "1.0.2"
  sha256 "3788d2b26ad185d6c95813640a5fd7ea8557b8517b73e855ff4fabc81a0af606"

  url "https://github.com/besil/deepseek-desktop/releases/download/v#{version}/deepseek-desktop-macos.zip"
  name "DeepSeek Desktop"
  desc "A simple electron wrapper for Deepseek web app"
  homepage "https://github.com/besil/deepseek-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "deepseek-desktop.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-c", "#{staged_path}/deepseek-desktop.app"]
  end

  zap trash: [
    "~/Library/Application Support/deepseek-desktop",
    "~/Library/Preferences/cloud.bernardinello.deepseek-desktop.plist",
  ]
end
