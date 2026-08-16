cask "fspy" do
  os macos: "fSpy", linux: "fspy"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.0.3"

  on_macos do
    sha256 "3aca686ea9d976580936279fbb3637698a3ba832d3cdd74dbbf79129b4dd2f56"

    app "fSpy.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stuffmatic.fspy.sfl*",
      "~/Library/Application Support/fspy",
      "~/Library/Logs/fSpy",
      "~/Library/Preferences/com.stuffmatic.fspy.helper.plist",
      "~/Library/Preferences/com.stuffmatic.fspy.plist",
    ]
  end
  on_linux do
    sha256 "2feaac484c6e124cd99239d5fc9eabad9dc15ea59077e21fb0de9ade4bd01770"

    depends_on arch: :x86_64

    app_image "fspy-#{version}-x86_64.AppImage", target: "fSpy.AppImage"
  end

  url "https://github.com/stuffmatic/fSpy/releases/download/v#{version}/#{os}-#{version}#{url_end}",
      verified: "github.com/stuffmatic/fSpy/"
  name "fSpy"
  desc "Still image camera matching"
  homepage "https://fspy.io/"

  caveats do
    requires_rosetta
  end
end
