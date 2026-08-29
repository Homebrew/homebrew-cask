cask "jamulus" do
  version "3.11.0"
  sha256 "4cf680b643dd1bbb2f52655f5fef71ce222024d3c19713997fbe2a3626cd7d6a"

  url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac.dmg",
      verified: "downloads.sourceforge.net/llcon/"
  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  livecheck do
    url "https://sourceforge.net/projects/llcon/rss?path=/Jamulus"
  end

  depends_on :macos

  app "Jamulus.app"
  app "JamulusServer.app"

  zap trash: [
    "~/Library/Application Scripts/app.jamulussoftware.Jamulus*",
    "~/Library/Containers/app.jamulussoftware.Jamulus*",
  ]
end
