cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "114.0.5735.90"
  sha256 arm:   "14eb3a1642a829fcbc11ef22e113b2f6a2340c4f4e235e5494b414c4834fa47c",
         intel: "6abdc9d358c2bc4668bef7b23048de2a9dbd3ad82cfbc6dfe322e74d4cff1650"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_#{arch}.zip",
      verified: "chromedriver.storage.googleapis.com/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "homebrew/cask-versions/chromedriver-beta"

  binary "chromedriver"

  # No zap stanza required
end
