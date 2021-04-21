cask "strawberry" do
  version "0.9.3"

  if MacOS.version <= :mojave
    sha256 "7129b83932c99cba9195602a53c3a3dd1ff8eeee0cfd6494f4f41fc08f43bfc3"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-mojave-x86_64.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  elsif MacOS.version <= :catalina
    sha256 "2f62dbca3a59edbde801b20d55392d4f910c7063612e69846ab62f872e9d71ad"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-catalina-x86_64.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  else
    sha256 "60b12797bfc513b1c6a3f54a4d1e207b3b8122e31aa80ea789a17a1002c86174"
    url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}-bigsur-x86_64.dmg",
        verified: "github.com/strawberrymusicplayer/strawberry/"
  end

  name "Strawberry"
  desc "Music player and music collection organizer"
  homepage "https://www.strawberrymusicplayer.org/"

  depends_on macos: ">= :mojave"

  app "strawberry.app"

  zap trash: [
    "~/Library/Application Support/Strawberry",
    "~/Library/Caches/Strawberry",
    "~/Library/Preferences/org.strawberrymusicplayer.Strawberry.plist",
    "~/Library/Saved Application State/org.strawberrymusicplayer.strawberry.savedState",
  ]
end
