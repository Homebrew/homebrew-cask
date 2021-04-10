cask "second-life-viewer" do
  version "6.4.11.551711"
  sha256 "6b1e40030af91c704a3c9e1b44710a59f1df49b2143d86a5da998e4f00d8567b"

  url "http://download.cloud.secondlife.com/Viewer_#{version.major}/Second_Life_#{version.dots_to_underscores}_x86_64.dmg"
  name "Linden Lab Second Life Viewer"
  homepage "https://secondlife.com/"

  livecheck do
    url "https://secondlife.com/support/downloads/"
    strategy :page_match
    regex(%r{href=.*?/Second_Life_(\d+(?:\.\d+)*)_x86_64\.dmg}i)
  end

  app "Second Life Viewer.app"

  zap trash: [
    "~/Library/Application Support/SecondLife",
    "~/Library/Caches/SecondLife",
  ]
end
