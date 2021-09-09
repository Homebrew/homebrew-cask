cask "chromedriver" do
  version "93.0.4577.63"

  if Hardware::CPU.intel?
    sha256 "ff4469d533dd09998fc99767468995b81b2ccd180811d961496e3b4f9d058284"

    url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
        verified: "chromedriver.storage.googleapis.com/"
  else
    sha256 "e1e9998dc8430b1862477dd02b1737d7ff2c797ad841ed11dc5dd1c1aeebab5d"

    url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64_m1.zip",
        verified: "chromedriver.storage.googleapis.com/"
  end

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
