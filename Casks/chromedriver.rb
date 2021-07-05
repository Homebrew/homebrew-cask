cask "chromedriver" do
  version "91.0.4472.101"

  if Hardware::CPU.intel?
    sha256 "c84c506dc5d45d85c4e4729822ce2fa843741dccdfc3ed2823cad85cab0cce59"

    url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
        verified: "chromedriver.storage.googleapis.com/"
  else
    sha256 "e0b9493f456b6660e602e7064feb9405f96c860b18404ed336cdb1051d155b57"

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
