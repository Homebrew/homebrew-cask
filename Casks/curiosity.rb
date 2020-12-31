cask "curiosity" do
  version "0.2"
  sha256 "22dbb6abaf1de6ccd16e63d1f579ea31b77bc146729cb14b34ae46822feb0206"

  url "https://github.com/Dimillian/RedditOS/releases/download/#{version}/Curiosity.app.zip"
  appcast "https://github.com/Dimillian/RedditOS/releases.atom"
  name "Curiosity"
  desc "SwiftUI Reddit client"
  homepage "https://github.com/Dimillian/RedditOS"

  depends_on macos: ">= :big_sur"

  app "Curiosity.app"

  zap trash: "~/Library/Containers/com.thomasricouard.curiosity"
end
