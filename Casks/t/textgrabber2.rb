cask "textgrabber2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.5.2"
  sha256 "6c20eb1b8a30ea66c127f7ffd7fa267ad1d95cca6f106a32d0e357536c093073"

  url "https://github.com/TextGrabber2-app/TextGrabber2/releases/download/v#{version}/TextGrabber2-#{version}.dmg"
  name "TextGrabber2"
  desc "Menu bar app that detects text from copied images"
  homepage "https://github.com/TextGrabber2-app/TextGrabber2"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "TextGrabber2.app"

  uninstall quit:       "app.cyan.textgrabber2",
            login_item: "TextGrabber2"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.textgrabber2",
    "~/Library/Containers/app.cyan.textgrabber2",
  ]
end
