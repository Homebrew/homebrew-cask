cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "1.7.1"
    sha256 arm:   "f39fde5271cb8ca1f2c99560052b4dd7597efc6304e2f0b4119f12d72b33ec77",
           intel: "20c94f482ef396e7f2465438238b2a224e93d78040767ad243d181bb1207ee21"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/releases/download/"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    version "1.7.1"
    sha256 arm:   "9aeb33ec4b8594ef064061cf8835e71be291d29ef92b32d24a8dd1cbf20df834",
           intel: "4c6cafffc7db45037c62265d392a48cdd2a5e15b0f94adcb423dfef80d98d009"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg",
        verified: "github.com/mihomo-party-org/mihomo-party/releases/download/"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://mihomo.party/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
