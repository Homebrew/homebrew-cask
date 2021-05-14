cask "curiosity" do
  version "0.4-3"
  sha256 "12bb40172d1a199aca548e3bf248d743a04aad3a04abce6510c2dd857d7e1a82"

  url "https://github.com/Dimillian/RedditOS/releases/download/#{version}/Curiosity.app.zip"
  name "Curiosity"
  desc "SwiftUI Reddit client"
  homepage "https://github.com/Dimillian/RedditOS"

  depends_on macos: ">= :big_sur"

  app "Curiosity.app"

  zap trash: "~/Library/Containers/com.thomasricouard.curiosity"
end
