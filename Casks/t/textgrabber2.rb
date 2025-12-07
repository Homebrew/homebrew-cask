cask "textgrabber2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.8.0"
  sha256 "b7d4f994d7e9954a7dbdac545c31246f727dc2b25c77f0bd6be321fdbb835863"

  url "https://github.com/TextGrabber2-app/TextGrabber2/releases/download/v#{version}/TextGrabber2-#{version}.dmg"
  name "TextGrabber2"
  desc "Menu bar app that detects text from copied images"
  homepage "https://github.com/TextGrabber2-app/TextGrabber2"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "TextGrabber2.app"

  uninstall quit:       "app.cyan.textgrabber2",
            login_item: "TextGrabber2"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.textgrabber2",
    "~/Library/Containers/app.cyan.textgrabber2",
  ]
end
