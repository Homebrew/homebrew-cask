cask "radicle-upstream" do
  version "0.1.5"
  sha256 "3653f9e228b51b1d193a1fbb8926bf0d26deb9c547c5944360316c309e5ef303"

  url "https://releases.radicle.xyz/radicle-upstream-#{version}.dmg"
  appcast "https://github.com/radicle-dev/radicle-upstream/releases.atom"
  name "Radicle Upstream"
  desc "Desktop client for Radicle"
  homepage "https://radicle.xyz/"

  depends_on macos: ">= :mojave"

  app "Radicle Upstream.app"
end
