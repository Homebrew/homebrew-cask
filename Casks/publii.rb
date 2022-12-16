cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.41.1"
  sha256 arm:   "aea005e8489774db37b068bd81ef732993e22cbaf8599aabd2971f3eea8c49c1",
         intel: "a5e13eaa9069d4f82bb3679661bff62281c98bacd32ad9c4fc85cf7aaff3873b"

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
