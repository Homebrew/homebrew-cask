cask "google-chrome-for-testing" do
  arch arm: "arm64", intel: "x64"

  version "115.0.5790.102"
  sha256 arm:   "ceaf0b0140520a9f931185a44411b8aa8b88d03dcbc4e54b098ffaf028f6bf84",
         intel: "76e2fbb782e195259e7e7873ffca0e7270d52066af79a0d401c92d66382420ec"

  url "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/#{version}/mac-#{arch}/chrome-mac-#{arch}.zip",
      verified: "edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/"
  name "Google Chrome for Testing"
  desc "Web browser for testing and automation use cases"
  homepage "https://developer.chrome.com/blog/chrome-for-testing/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["channels"]["Stable"]["version"]&.scan(regex) { |match| match[0] }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "chrome-mac-#{arch}/Google Chrome for Testing.app"
  binary "#{appdir}/Google Chrome for Testing.app/Contents/MacOS/Google Chrome for Testing"
end
