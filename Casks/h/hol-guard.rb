cask "hol-guard" do
  version "3.0.92"
  sha256 "fd5486f2f96fac8cadd3341a2a1b004d0da89802a2add0aa010c85b6168c5af7"

  url "https://github.com/hashgraph-online/hol-guard-desktop/releases/download/desktop-v#{version}/HOL-Guard-Desktop-#{version}-aarch64-dmg.dmg",
      verified: "github.com/hashgraph-online/hol-guard-desktop/"
  name "HOL Guard"
  desc "Native companion for HOL Guard"
  homepage "https://hol.org/guard"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "HOL Guard.app"
end
