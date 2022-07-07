cask "publii" do
  arch = Hardware::CPU.intel? ? "intel" : "apple-silicon"
  version "0.40.0"

  if Hardware::CPU.intel?
    sha256 "3ac0fe18153fd565ce3e4da76a2bbae58c05675ca2d41224e04fc34403b6e2b5"
  else
    sha256 "0906693aa1324ce28548ce98f5a67bc2fd42c64c80d858406e66b41ca61a5fe8"
  end

  url "https://cdn.getpublii.com/Publii-#{version}-#{arch}.dmg"
  name "Publii"
  desc "Static website generator"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
    regex(/href=.*?Publii[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg/i)
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
