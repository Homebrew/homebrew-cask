cask "olive" do
  version "1687a721"
  sha256 "183f6eeeb922738ce5db76a19c689cc7dcf2b081b3825a5e601f0b63e4a8c685"

  url "https://olivevideoeditor.org/dl/Olive-#{version}-macOS-x86_64.zip"
  name "Olive"
  desc "Non-linear video editor"
  homepage "https://olivevideoeditor.org/"

  livecheck do
    url "https://olivevideoeditor.org/download"
    regex(%r{<b>Version:</b>\s*(.+)\s*\(}i)
  end

  app "Olive.app"

  uninstall rmdir: "~/Library/Application Support/olivevideoeditor.org{/Olive,}"

  zap trash: [
    "~/Library/Preferences/com.*.Olive.plist",
    "~/Library/Preferences/olivevideoeditor.org",
  ]
end
