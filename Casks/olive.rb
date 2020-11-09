cask "olive" do
  version "0.1.0,1e3cf53"
  sha256 "9ab6afc7ee9d7fb5083d1a49adea7dc5934bdbf6d635454cae4f8667fbd7c368"

  url "https://olivevideoeditor.org/dl/Olive-#{version.after_comma}-macOS-x86_64.zip"
  appcast "https://github.com/olive-editor/olive/releases.atom"
  name "Olive"
  desc "Non-linear video editor"
  homepage "https://olivevideoeditor.org/"

  app "Olive.app"

  uninstall rmdir: "~/Library/Application Support/olivevideoeditor.org{/Olive,}"

  zap trash: [
    "~/Library/Preferences/olivevideoeditor.org",
    "~/Library/Preferences/com.*.Olive.plist",
  ]
end
