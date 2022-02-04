cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "98.0.4758.80"

  if Hardware::CPU.intel?
    sha256 "ec171213e81e2d1cb1309ac3931560d0cd693abf50db1c96d0ede5c39765cb1a"
  else
    sha256 "9b5bf1bb33da437c6550dca1d1d46fd84a305f56152abe532a5b11ac2cb7b44e"
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
