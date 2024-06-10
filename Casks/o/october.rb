cask "october" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0"
  sha256 arm:   "97083a7c8823137ed72f80d94d3fc8989af1250ced59815e7eeb81fca64a6492",
         intel: "88aff8f1ba35a49bba75d5870a911a9a9ca499233cd8ab51db06afa6147212f4"

  url "https://github.com/marcus-crane/october/releases/download/v#{version}/october_#{version}_darwin_#{arch}.zip",
      verified: "github.com/marcus-crane/october/"
  name "October"
  desc "GUI for retrieving Kobo highlights and syncing them with Readwise"
  homepage "https://october.utf9k.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "October.app"

  zap trash: "~/Library/Application Support/october"
end
