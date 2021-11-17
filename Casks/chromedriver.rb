cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "96.0.4664.45"

  if Hardware::CPU.intel?
    sha256 "0e88eab13db9bd6ef2def8c2342556c29f739f00846de21258b2a3b61e476b64"
  else
    sha256 "351fdac849f4de034d36f4edb6bc7a9cf6455dca460767e92ac508fd2ce2d6fb"
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
