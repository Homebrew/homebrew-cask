cask "pluginval" do
  version "1.0.3"
  sha256 "6bb4d0acc964e775af155ec984c1566dc989dad2a708f64c773706d7baec43af"

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
