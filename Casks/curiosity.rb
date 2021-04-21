cask "curiosity" do
  version "0.3"
  sha256 "cb7aacd709b3f7e591e8ac96df96f37b156828cf7aac80850634a81ada4bdcf4"

  url "https://github.com/Dimillian/RedditOS/releases/download/#{version}/Curiosity.app.zip"
  name "Curiosity"
  desc "SwiftUI Reddit client"
  homepage "https://github.com/Dimillian/RedditOS"

  depends_on macos: ">= :big_sur"

  app "Curiosity.app"

  zap trash: "~/Library/Containers/com.thomasricouard.curiosity"
end
