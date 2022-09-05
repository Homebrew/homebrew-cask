cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.40.3"
  sha256 arm:   "4000898d0050ceff42c962ca033debb67f9e822d136d084b675cef6035d74713",
         intel: "5575a04f5f0831303099e48f9de963018e543393a3dc9f297e3ae0cf69c32fe1"

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
