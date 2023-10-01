cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.43.0"
  sha256 arm:   "76000395141da70efd6056db42bc93488a2cb87b42182837fd81417cb7ad79fe",
         intel: "98c51a763f21ba72ad34acfb81a90fee006427df0965580ff6c8d360cdba06a7"

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
