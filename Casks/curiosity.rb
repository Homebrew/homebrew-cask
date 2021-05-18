cask "curiosity" do
  version "0.5.3"
  sha256 "01af2174404610f74f08d188613cafa551316937a2f82663ce65e30d1a2ae756"

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
