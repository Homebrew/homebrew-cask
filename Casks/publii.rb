cask "publii" do
  arch = Hardware::CPU.intel? ? "intel" : "apple-silicon"
  version "0.40.1"

  if Hardware::CPU.intel?
    sha256 "a41f8b2a6c942d2d3d31af86be81fb2944011641a3f789573db41876aae17a46"
  else
    sha256 "56c37a9c7583b5cec70d862faedd0adab20809e73330aa723c8f9a62e05cc2fa"
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
