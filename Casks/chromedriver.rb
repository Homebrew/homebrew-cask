cask "chromedriver" do
  version "90.0.4430.24"

  if Hardware::CPU.intel?
    url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
        verified: "chromedriver.storage.googleapis.com/"
    sha256 "1318b3717576154e36476c3253ee8e87a2e09eaf07631ee4948348a8f6a1545f"
  else
    url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64_m1.zip",
        verified: "chromedriver.storage.googleapis.com/"
    sha256 "c1af4f3eb0efd4050dc502db5928f72b267ac2c6ea1e76614491662a3db0300d"
  end
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end
  
  postflight do
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/chromedriver"]
  end

  conflicts_with cask: "homebrew/cask-versions/chromedriver-beta"

  binary "chromedriver"
end
