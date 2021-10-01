cask "chromedriver" do
  version "94.0.4606.61"

  if Hardware::CPU.intel?
    sha256 "3b91860aa4d71330e68cac11da586ac39adcead361ae95b3fa856fd3da5383ac"

    url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
        verified: "chromedriver.storage.googleapis.com/"
  else
    sha256 "f32d6de39c14d531268ab5882c5144253f3bdb84fc210fd08c435f13bd5a7dce"

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
