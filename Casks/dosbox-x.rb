cask "dosbox-x" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-#{arch}-#{version.after_comma}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  if Hardware::CPU.intel?
    version "0.83.18,20211001082411"
    sha256 "c6a9fb6e410b5db7d1d8b55662a9137dec6c46098edacb3da3ff333fa62a9f82"
  else
    version "0.83.18,20211001001714"
    sha256 "3178fe181e6725bd2671f7dcef9b1e99e7399d94bda6ea22a8ccf111885dd7f1"
  end

  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url "https://github.com/joncampbell123/dosbox-x/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/dosbox-x-v?(\d+(?:\.\d+)*)/dosbox-x-macosx-#{arch}-([^/]+)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "dosbox-x/dosbox-x.app"

  zap trash: [
    "~/Library/Preferences/com.dosbox-x.plist",
    "~/Library/Preferences/mapper-dosbox-x.map",
  ]
end
