cask "chromedriver" do
  version "91.0.4472.19"

  if Hardware::CPU.intel?
    sha256 "c23d8244cff767fc1c9bc259fb86fece0124d1eba9645397fe7903100e98651f"

    url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
        verified: "chromedriver.storage.googleapis.com/"
  else
    sha256 "712603c85bc5588b98f35cd395cdfb9363e6d6724e7b8e237dc89751763d9d08"

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
