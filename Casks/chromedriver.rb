cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "101.0.4951.41"

  if Hardware::CPU.intel?
    sha256 "942b828dbe83b1a01f78a03912246ee8e95f9b298290b905a70179330828fe26"
  else
    sha256 "5e04c84a29c4f4fb61c8e5e7bcaa8f6ed326731fe4c74a48438fbf0f9a8c324f"
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
