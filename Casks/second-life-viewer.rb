cask "second-life-viewer" do
  version "6.4.7.546539"
  sha256 "7ef7a173d9f79add4da349b308f97e1d9f3a355f8858eb89626801d3d3c179f2"

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  appcast "https://secondlife.com/support/downloads/"
  name "Linden Lab Second Life Viewer"
  homepage "https://secondlife.com/"

  app "Second Life Viewer.app"

  zap trash: [
    "~/Library/Application Support/SecondLife",
    "~/Library/Caches/SecondLife",
  ]
end
