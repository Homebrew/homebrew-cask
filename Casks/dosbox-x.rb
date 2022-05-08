cask "dosbox-x" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "0.83.25,20220501074941"

  if Hardware::CPU.intel?
    sha256 "834cda3c7834517847ff083288f651156217a2c31f99f486316d8cc2327bb436"
  else
    sha256 "0e2f78e5dbf2283b1272506fd02c9832cdf43e08b904e1c2d17957df5b43c1d4"
  end

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.csv.first}/dosbox-x-macosx-#{arch}-#{version.csv.second}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url "https://github.com/joncampbell123/dosbox-x/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=".*?/dosbox-x-v?(\d+(?:\.\d+)+)/dosbox-x-macosx-#{arch}-([^/]+)\.zip"}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "dosbox-x/dosbox-x.app"

  zap trash: [
    "~/Library/Preferences/com.dosbox-x.plist",
    "~/Library/Preferences/mapper-dosbox-x.map",
  ]
end
