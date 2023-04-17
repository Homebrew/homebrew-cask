cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "112.0.5615.49"
  sha256 arm:   "b287b9869a2702c1ded005470532b8397e38d24d81775462c03c8f5b669a699f",
         intel: "302dda8a7559ffd96e66a146b732fab61a63d6bfe60abd66e298dae8b02b4090"

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
