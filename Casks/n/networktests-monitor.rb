cask "networktests-monitor" do
  version "0.4.3"
  sha256 "b6a8b79e57a37c7a365435306c6951db684197876b510cbe9478c74857e5b4ad"

  url "https://github.com/networktests/networktests/releases/download/v#{version}/NetworkTests-Monitor-#{version}.pkg"
  name "NetworkTests Monitor"
  desc "Continuous network monitoring with plain-English verdicts"
  homepage "https://networktests.com/monitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "NetworkTests-Monitor-#{version}.pkg"

  uninstall quit:    "com.wails.networktests",
            pkgutil: "com.networktests.agent"

  zap trash: "~/Library/Application Support/networktests"
end
