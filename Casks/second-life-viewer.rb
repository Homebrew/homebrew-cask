cask "second-life-viewer" do
  version "6.4.9.549455"
  sha256 "014721ab9af1f3686fe916d3019be542999f89dadc32a1fece9722cd82f3965e"

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
