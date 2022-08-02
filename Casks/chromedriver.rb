cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "103.0.5060.134"

  if Hardware::CPU.intel?
    sha256 "7f7036fdfb6f51b8c10e1bbf8f846ed7e1b877668cc0be39a211410192b7f666"
  else
    sha256 "8a1fc69e573a15bfa9c53f0be15af3252bafa04e779c8e2074bedc6db9c067a7"
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
