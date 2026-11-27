cask "commandpost" do
  on_monterey :or_older do
    on_big_sur :or_older do
      version "1.4.22"
      sha256 "9115107751cda2cf605a513da378fb0dcc40d57fe7dfbd76f664420946f9f773"
    end

    on_monterey do
      version "1.4.27"
      sha256 "c879eb95f6271b54cb6beb3aa04b36d670955df34f7dfe962bdaea75363b19f5"
    end

    url "https://github.com/CommandPost/CommandPost/releases/download/#{version}/CommandPost_#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "3.1.1,8175"
    sha256 "0d7352b928c6c88a79bfcc2b5c04095a46d7560e4d26882239e8fa64ac01a24a"

    url "https://github.com/CommandPost/CommandPost/releases/download/#{version.csv.first}-build-#{version.csv.second}/CommandPost-Helper-#{version.csv.first}-#{version.csv.second}.dmg"

    livecheck do
      url :url
      regex(/^(\d+(?:\.\d+)+)[._-]build[._-](\d+)$/i)
      strategy :git do |tags, regex|
        tags.filter_map do |tag|
          match = tag.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end
    end
  end

  name "CommandPost"
  desc "Workflow enhancements for Final Cut Pro"
  homepage "https://commandpost.io/"

  auto_updates true
  depends_on :macos

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
