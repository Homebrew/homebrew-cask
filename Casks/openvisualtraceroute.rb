cask "openvisualtraceroute" do
  version "2.0.0"
  sha256 "bf1fecac21fecde1100f495b0e4e5a166b552dcc8477ab1caf90d6f63c610977"

  url "https://downloads.sourceforge.net/openvisualtrace/#{version}/OpenVisualTraceRoute#{version}.dmg",
      verified: "downloads.sourceforge.net/openvisualtrace/"
  name "OpenVisualTraceroute"
  desc "Visual networking tool"
  homepage "https://visualtraceroute.net/"

  livecheck do
    url :url
    regex(%r{url=.*?/OpenVisualTraceRoute[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "OpenVisualTraceroute.app"

  zap trash: "~/ovtr"

  caveats do
    depends_on_java "8"
  end
end
