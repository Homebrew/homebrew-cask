cask "pluginval" do
  version "1.0.4"
  sha256 "3c4c533bda0c5059eea3ddaea752d757ee2025041f0f47e6bcb0e87f6082b29f"

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
