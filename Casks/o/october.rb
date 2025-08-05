cask "october" do
  arch arm: "arm64", intel: "amd64"

  version "1.12.1"
  sha256 arm:   "a707d55c19053aba93625a83d90ba21bac794a597283f8d106c76f2d074fdd71",
         intel: "9e330bd225eb85e0b220e0c9bfc208eac777f65703aa09cdb6cc34f519530f15"

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
