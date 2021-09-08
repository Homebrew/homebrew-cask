cask "remarkable" do
  version "2.8.2.170"
  sha256 "7669f1e8dd1b13fd5305af8a215b17b33b7ff6cc218a218c9992b7dd83223465"

  url "https://downloads.remarkable.com/desktop/production/mac/reMarkable-#{version}.dmg"
  name "Remarkable"
  desc "Desktop application"
  homepage "https://remarkable.com/"

  depends_on macos: ">= :high_sierra"

  app "reMarkable.app"
end
