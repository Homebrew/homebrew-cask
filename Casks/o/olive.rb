cask "olive" do
  version "1e3cf53"
  sha256 "9ab6afc7ee9d7fb5083d1a49adea7dc5934bdbf6d635454cae4f8667fbd7c368"

  url "https://olivevideoeditor.org/dl/Olive-#{version}-macOS-x86_64.zip"
  name "Olive"
  desc "Non-linear video editor"
  homepage "https://olivevideoeditor.org/"

  livecheck do
    url "https://olivevideoeditor.org/download.php"
    regex(/golegacy\.php\?hash=(.*)&type=/i)
  end

  app "Olive.app"

  uninstall rmdir: "~/Library/Application Support/olivevideoeditor.org{/Olive,}"

  zap trash: [
    "~/Library/Preferences/com.*.Olive.plist",
    "~/Library/Preferences/olivevideoeditor.org",
  ]
end
