cask "textgrabber2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.11.0"
  sha256 "597a420b920cb1023cee01d67d8f426c2488f6398327177900758d948cc46e7b"

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
