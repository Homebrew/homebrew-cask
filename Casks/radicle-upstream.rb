cask "radicle-upstream" do
  version "0.1.5"
  sha256 "3653f9e228b51b1d193a1fbb8926bf0d26deb9c547c5944360316c309e5ef303"

  url "https://releases.radicle.xyz/radicle-upstream-#{version}.dmg"
  name "Radicle Upstream"
  desc "Desktop client for Radicle"
  homepage "https://radicle.xyz/"

  app "Radicle Upstream.app"
end
