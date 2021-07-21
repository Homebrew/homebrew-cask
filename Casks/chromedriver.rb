cask "chromedriver" do
  version "92.0.4515.43"

  if Hardware::CPU.intel?
    sha256 "0ec54504c043013fe8a0617d0c6b8cc012f287cc455412b560e4d4f249264fb2"

    url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
        verified: "chromedriver.storage.googleapis.com/"
  else
    sha256 "bdcd58be12bdfc9c5b93469105c61e82438bf9b55a7fb611d11ae7b1060c2dd7"

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
