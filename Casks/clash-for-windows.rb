cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.19.26"

  on_intel do
    sha256 "6572b20a7cee1ecea9826bf0f5bcc04dd93771cb26b205b64cb28646be6313eb"
  end
  on_arm do
    sha256 "c859cce3e780cf7a3c52be32ea96d266ad3b1e9925e1c4438e3e7fb70f6b8b77"
  end

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash for Windows.app"
end
