cask "google-antigravity" do
  arch arm: "darwin-arm", intel: "darwin-x64"

  version "1.11.2,6251250307170304"
  sha256 :no_check

  url "https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/#{version.csv.first}-#{version.csv.second}/#{arch}/Antigravity.dmg",
      verified: "edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/"
  name "Google Antigravity"
  desc "AI Coding Agent IDE"
  homepage "https://antigravity.google/"

  livecheck do
    # version in artifact is only the short version
    # download website pulls link from fingerprinted javascript file
    skip "No version information available"
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Antigravity.app"
end
