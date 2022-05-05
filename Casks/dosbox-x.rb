cask "dosbox-x" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "0.83.23,20220228192444"

  if Hardware::CPU.intel?
    sha256 "806f6a4b400654f70a559607159f0da58570cbb6b7c0e413f804e180209ff9b8"
  else
    sha256 "daa5a76e873d32a92bed19a629cb6da934ac9ac46550bfde4c7f8f4dec40c66d"
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
