cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "102.0.5005.61"

  if Hardware::CPU.intel?
    sha256 "4f1641412304448e0916a5c589cca5e2700035db3a484eb72e2cefa878c1dcf8"
  else
    sha256 "238e7ca76d2e9d353b6f7cd8546c04666fbda188ca9719b6def44f387aacbb0f"
  end

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
end
