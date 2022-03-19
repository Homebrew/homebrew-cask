cask "openvisualtraceroute" do
  version "2.0.0"
  sha256 "581417e62d6d269fe8d0e5ccd426e21cc3fdd431b329e6c0aa113fc678c42ae4"

  url "https://downloads.sourceforge.net/openvisualtrace/#{version}/OpenVisualTraceRoute#{version}.dmg",
      verified: "downloads.sourceforge.net/openvisualtrace/"
  name "OpenVisualTraceroute"
  homepage "https://visualtraceroute.net/"

  livecheck do
    regex(/OpenVisualTraceRoute[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "OpenVisualTraceroute.app"

  zap trash: "~/ovtr"

  caveats do
    depends_on_java "8"
  end
end
