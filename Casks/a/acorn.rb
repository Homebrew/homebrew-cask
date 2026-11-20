cask "acorn" do
  version "8.7.3"
  sha256 "d5d366ea61f67398a49c2303a07e7c0bd87e0790820f6521896e72ba87bd6952"

  url "https://flyingmeat.com/download/Acorn-#{version}.zip"
  name "Acorn"
  desc "Image editor focused on simplicity"
  homepage "https://flyingmeat.com/acorn/"

  livecheck do
    url "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Acorn.app"

  zap trash: [
    "~/Library/Application Scripts/com.flyingmeat.Acorn#{version.major}.Acornappex",
    "~/Library/Application Support/Acorn",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.flyingmeat.acorn#{version.major}.sfl*",
    "~/Library/Caches/com.flyingmeat.Acorn#{version.major}",
    "~/Library/Containers/com.flyingmeat.Acorn#{version.major}.Acornappex",
    "~/Library/HTTPStorages/com.flyingmeat.Acorn#{version.major}",
    "~/Library/Preferences/com.flyingmeat.Acorn#{version.major}.plist",
    "~/Library/Saved Application State/com.flyingmeat.Acorn#{version.major}.savedState",
  ]
end
