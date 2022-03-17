cask "pluginval" do
  version "0.3.0"
  sha256 "1678f91c1afed6857a7a7c05bb13fc2b5586a7a29b02381751aa622c0386429c"

  url "https://github.com/Tracktion/pluginval/releases/download/v#{version}/pluginval_macOS.zip",
      verified: "github.com/Tracktion/pluginval/"
  name "pluginval"
  desc "Cross-platform plugin validator and tester application"
  homepage "https://www.tracktion.com/develop/pluginval"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "pluginval.app"

  zap trash: [
    "~/Library/Application Support/pluginval/pluginval.xml",
    "~/Library/Caches/pluginval/pluginval_crash.txt",
  ]
end
