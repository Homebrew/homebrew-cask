cask "october" do
  arch arm: "arm64", intel: "amd64"

  version "1.12.2"
  sha256 arm:   "abc5ae23a95455da184f4789d26e8624b798225d54508b37236bcd21ae7ee342",
         intel: "5b1ee9a8b5537d091f911515806cca3eec3f3200802013791a1086fa9acd6a9e"

  url "https://github.com/marcus-crane/october/releases/download/v#{version}/october_#{version}_darwin_#{arch}.zip",
      verified: "github.com/marcus-crane/october/"
  name "October"
  desc "GUI for retrieving Kobo highlights and syncing them with Readwise"
  homepage "https://october.utf9k.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "October.app"

  zap trash: "~/Library/Application Support/october"
end
