cask "acorn" do
  version "8.7.1"
  sha256 "e69e0d74382a4f9c76a184ecbf9759055ac5bebdf3336f6b3eaa0a7ff5cfb5a5"

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
