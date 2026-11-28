cask "strawberry" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "bb6875910e1bb37aa0860b70984f75924bf275a8714a342b536f52ae3362f769",
         intel: "93c6f3a28d5943c1d22bb1aef7020ab1cd14c7e9379425b28bb2495fefc7e5de"

  url "https://strawberrybucket.com/strawberry-#{version}-#{arch}.dmg"
  name "Strawberry"
  desc "AI-powered web browser"
  homepage "https://strawberrybrowser.com/"

  livecheck do
    url "https://strawberrybucket.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Strawberry.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mirror-browser.sfl*",
    "~/Library/Application Support/strawberry",
    "~/Library/Preferences/com.mirror-browser.plist",
  ]
end
