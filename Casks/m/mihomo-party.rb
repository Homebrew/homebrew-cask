cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"

  on_catalina :or_older do
    sha256 arm:   "dfc70213e71c35cae5d549b4982ff5579b5621a0430bea86a7c91bd3e8aa0a84",
           intel: "e9908d1ce333da4be7da741ec597791fbefdcfcf986275b3022aab2cb61e50aa"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "38feacf42817a40b1db5b08ec995ab0be7375628a0de69f1a232f45f56e53b02",
           intel: "b42afe5c965eaa75ba17437ae1d9e66527b8693433255dc84e7cef7c05b3ec98"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://mihomo.party/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  uninstall launchctl: "party.mihomo.helper",
            pkgutil:   "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
