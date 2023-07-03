cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.42.1"
  sha256 arm:   "5999c011cc63fc5969791ec9813251a8cd11e66b9a02218278e64e19b006b2e9",
         intel: "51e6f510c38c5389251eb89cb6087a87aadf5c9b2a4aa19647febe88cd2943ab"

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
