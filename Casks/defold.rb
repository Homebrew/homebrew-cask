cask "defold" do
  version "1.2.189,229b4dbc78495615871b3a7679e79d75d018c27a"
  sha256 :no_check

  # Yes, this is fine, editor-alpha is how their stable channel is called
  release_channel = "editor-alpha"
  release_info_url = "http://d.defold.com/#{release_channel}/info.json"

  url release_info_url do |json_content|
    require "json"
    version_sha = JSON.parse(json_content)["sha1"]
    "https://d.defold.com/archive/editor-alpha/#{version_sha}/editor-alpha/editor2/Defold-x86_64-darwin.dmg"
  end
  name "Defold"
  desc "Free to use game engine for development of desktop, mobile and web games"
  homepage "https://defold.com/"

  livecheck do
    url release_info_url
    strategy :page_match do |json_content|
      require "json"
      info = JSON.parse(json_content)
      "#{info["version"]},#{info["sha1"]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Defold.app"

  zap trash: [
    "~/Library/Application Support/Defold",
    "~/Library/Preferences/com.defold.editor.plist",
    "~/Library/Caches/com.defold.editor",
    "~/Library/Saved Application State/com.defold.editor.savedState",
  ]
end
