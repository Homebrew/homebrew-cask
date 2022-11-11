cask "pluginval" do
  version "1.0.2"
  sha256 "a743a4546c16f4f4049dc8eee2c45c0c723693f76f82f1505ae9159649b54e6e"

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
