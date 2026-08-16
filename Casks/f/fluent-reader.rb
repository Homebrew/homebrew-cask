cask "fluent-reader" do
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.2.2"

  on_macos do
    sha256 "f966116db2ad855c30d5c710ec3c9d8408d867b81ca156b639539010e56ad906"

    depends_on macos: :monterey

    app "Fluent Reader.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/me.hyliu.fluentreader.sfl*",
      "~/Library/Application Support/fluent-reader",
      "~/Library/Preferences/me.hyliu.fluentreader.plist",
      "~/Library/Saved Application State/me.hyliu.fluentreader.savedState",
    ]
  end
  on_linux do
    sha256 "009c44d57e97fca260ffac56650272be01e3f5369b1419364d0768b43b388964"

    depends_on arch: :x86_64

    app_image "Fluent.Reader.#{version}.AppImage", target: "Fluent Reader.AppImage"
  end

  url "https://github.com/yang991178/fluent-reader/releases/download/v#{version}/Fluent.Reader.#{version}.#{url_end}",
      verified: "github.com/yang991178/fluent-reader/"
  name "Fluent Reader"
  desc "RSS/Atom news aggregator"
  homepage "https://hyliu.me/fluent-reader/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
