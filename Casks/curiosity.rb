cask "curiosity" do
  version "0.4.2"
  sha256 "124c7f638aac43b3cb2dfe8fcadc6ca79dac6b05c225b77bdea732646bd2ecf1"

  url "https://github.com/Dimillian/RedditOS/releases/download/#{version}/Curiosity.app.zip"
  name "Curiosity"
  desc "SwiftUI Reddit client"
  homepage "https://github.com/Dimillian/RedditOS"

  depends_on macos: ">= :big_sur"

  app "Curiosity.app"

  zap trash: "~/Library/Containers/com.thomasricouard.curiosity"
end
