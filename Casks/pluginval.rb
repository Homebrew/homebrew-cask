cask "pluginval" do
  version "1.0.0"
  sha256 "904c077aabedaee9feaae2cb3fb91aeff0b0078c162d7113cd29ac8677485c05"

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
