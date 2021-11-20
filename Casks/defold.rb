cask "defold" do
  version :latest
  sha256 :no_check

  # Yes, this is fine, editor-alpha is how their stable channel is called
  url "http://d.defold.com/editor-alpha/info.json" do |json_content|
    require "json"
    version_sha = JSON.parse(json_content)["sha1"]
    "https://d.defold.com/archive/editor-alpha/#{version_sha}/editor-alpha/editor2/Defold-x86_64-darwin.dmg"
  end
  name "Defold"
  desc "Free to use game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  livecheck do
    url "http://d.defold.com/editor-alpha/info.json"
    strategy :page_match do |json_content|
      require "json"
      info = JSON.parse(json_content)
      "#{info["version"]},#{info["sha1"]}"
    end
  end

  depends_on macos: ">= :el_capitan"

  app "Defold.app"

  zap trash: [
    "~/Library/Application Support/Defold",
    "~/Library/Preferences/com.defold.editor.plist",
    "~/Library/Caches/com.defold.editor",
    "~/Library/Saved Application State/com.defold.editor.savedState",
  ]
end
