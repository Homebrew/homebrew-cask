cask "beat-link-trigger" do
  arch intel: "-Intel"

  version "8.0.0"
  sha256 arm:   "31b53cad22f15c515f33065b0a0a4fa62af5ea6c1e8b6f9174931c23bfb0f3e5",
         intel: "171b912c1e7257b9e99fb1ed3e9bb674cc65ea634ceb494dfe18a0cd23504afe"

  url "https://github.com/Deep-Symmetry/beat-link-trigger/releases/download/v#{version}/Beat-Link-Trigger-#{version}-MacOS#{arch}.dmg"
  name "Beat Link Trigger"
  desc "Event trigger and show automation tool for Pioneer CDJs"
  homepage "https://github.com/Deep-Symmetry/beat-link-trigger"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "Beat Link Trigger.app"

  zap trash: "~/Library/Preferences/org.deepsymmetry.beat-link-trigger.plist"
end
