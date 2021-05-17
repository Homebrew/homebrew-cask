cask "curiosity" do
  version "0.5.2"
  sha256 "1177150378b058ffa59931f7207cf3cf85cc17989c753a1f95a80099b80aee6c"

  url "https://github.com/Dimillian/RedditOS/releases/download/#{version}/Curiosity.app.zip"
  name "Curiosity"
  desc "SwiftUI Reddit client"
  homepage "https://github.com/Dimillian/RedditOS"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Curiosity.app"

  zap trash: "~/Library/Containers/com.thomasricouard.curiosity"
end
