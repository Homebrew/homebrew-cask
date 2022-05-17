cask "lightform" do
  version "2.2.12.1054"
  sha256 "60c4d4a30cef2a5a0d4f0d89b80806e920a0263dbe0a01628c4f3f2ce4b1d1b6"

  url "https://software.webservices.lumenous3d.com/app/Lightform-#{version}-release-public-macos.dmg",
      verified: "software.webservices.lumenous3d.com/app/"
  name "Lightform Creator"
  desc "AR projection and audio reactivity software for Lightform devices"
  homepage "https://lightform.com/creator"

  livecheck do
    url "https://guide.lightform.com/hc/en-us/articles/360012546274-Download-Lightform-Creator"
    regex(/href=.*?Lightform[._-]v?(\d+(?:\.\d+)+)-release-public-macos\.dmg/i)
  end

  app "Lightform.app"

  zap trash: [
    "~/Library/Application Support/Lightform",
    "~/Library/Caches/Lightform",
    "~/Library/Preferences/com.lightform.desktop.plist",
    "~/Library/Saved Application State/com.lightform.desktop.savedState",
  ]
end
