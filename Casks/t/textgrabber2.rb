cask "textgrabber2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.11.1"
  sha256 "161fb268d79e19fb46d4bfbe2443963391a44da25cf72d87d7b7a1f26dc18360"

  url "https://github.com/TextGrabber2-app/TextGrabber2/releases/download/v#{version}/TextGrabber2-#{version}.dmg"
  name "TextGrabber2"
  desc "Menu bar app that detects text from copied images"
  homepage "https://github.com/TextGrabber2-app/TextGrabber2"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "TextGrabber2.app"

  uninstall quit:       "app.cyan.textgrabber2",
            login_item: "TextGrabber2"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.textgrabber2",
    "~/Library/Containers/app.cyan.textgrabber2",
  ]
end
