cask "curiosity" do
  version "0.5.5"
  sha256 "cee2a11755b23c55d96a2226750e80ee991ae8bff74bda4ff757717bcbdf9cad"

  url "https://github.com/Dimillian/RedditOS/releases/download/#{version}/Curiosity.zip"
  name "Curiosity"
  desc "SwiftUI Reddit client"
  homepage "https://github.com/Dimillian/RedditOS"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Curiosity.app"

  zap trash: "~/Library/Containers/com.thomasricouard.curiosity"
end
