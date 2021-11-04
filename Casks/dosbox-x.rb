cask "dosbox-x" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "0.83.19,20211101101155"
    sha256 "cda2d36b953b68934579340fe588186ce8b0661e75ec0410736929fe0634dc55"
  else
    version "0.83.18,20211001001714"
    sha256 "3178fe181e6725bd2671f7dcef9b1e99e7399d94bda6ea22a8ccf111885dd7f1"
  end

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-#{arch}-#{version.after_comma}.zip",
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
