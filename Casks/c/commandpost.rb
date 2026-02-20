cask "commandpost" do
  on_monterey :or_older do
    on_catalina :or_older do
      version "1.4.13"
      sha256 "dd0ddbf94722174760c82870f537b299ce0b1b6265875aa558d515df4338a816"
    end

    on_big_sur do
      version "1.4.22"
      sha256 "9115107751cda2cf605a513da378fb0dcc40d57fe7dfbd76f664420946f9f773"
    end

    on_monterey do
      version "1.4.27"
      sha256 "c879eb95f6271b54cb6beb3aa04b36d670955df34f7dfe962bdaea75363b19f5"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "2.0.5"
    sha256 "b1878c94a8075cdd4809ec52ce7e27d57b12a44b26ad8767400852e2c173fb0f"
  end

  url "https://github.com/CommandPost/CommandPost/releases/download/#{version}/CommandPost_#{version}.dmg",
      verified: "github.com/CommandPost/CommandPost/"
  name "CommandPost"
  desc "Workflow enhancements for Final Cut Pro"
  homepage "https://commandpost.io/"

  auto_updates true

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
