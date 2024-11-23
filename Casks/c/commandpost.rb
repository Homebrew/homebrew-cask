cask "commandpost" do
  on_mojave :or_older do
    version "1.2.16"
    sha256 "a874240a9c37a77da47c7e3c33342f3cc4d415d3bb146bee4b49b0776e8e08a8"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "1.4.13"
    sha256 "dd0ddbf94722174760c82870f537b299ce0b1b6265875aa558d515df4338a816"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "1.5.0"
    sha256 "5545d46e8a7cb43c7800e867850f0eb6dd4613c375ee154c0c35c2b86bc00948"
  end

  url "https://github.com/CommandPost/CommandPost/releases/download/#{version}/CommandPost_#{version}.dmg",
      verified: "github.com/CommandPost/CommandPost/"
  name "CommandPost"
  desc "Workflow enhancements for Final Cut Pro"
  homepage "https://commandpost.io/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "CommandPost.app"
  binary "#{appdir}/CommandPost.app/Contents/Frameworks/hs/cmdpost"

  uninstall quit:       "org.latenitefilms.CommandPost",
            login_item: "CommandPost"

  zap trash: [
    "~/Library/Application Support/CommandPost",
    "~/Library/Application Support/org.latenitefilms.CommandPost",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/org.latenitefilms.CommandPost",
    "~/Library/Caches/com.crashlytics.data/org.latenitefilms.CommandPost",
    "~/Library/Caches/io.fabric.sdk.mac.data/org.latenitefilms.CommandPost",
    "~/Library/Caches/org.latenitefilms.CommandPost",
    "~/Library/HTTPStorages/org.latenitefilms.CommandPost",
    "~/Library/Preferences/org.latenitefilms.CommandPost.plist",
    "~/Library/Saved Application State/org.latenitefilms.CommandPost.savedState",
    "~/Library/WebKit/org.latenitefilms.CommandPost",
  ]
end
