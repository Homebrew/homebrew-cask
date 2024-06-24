cask "october" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0"
  sha256 arm:   "a457775cbe48ff05a455af5635931722caa94f460798fa935e54a8bf8e13b67e",
         intel: "fd7f577f8cb7d5ebaf9fddfb1f6b5529ee386360d14093edc0683d6150277918"

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
