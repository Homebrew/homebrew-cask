cask "lectrote" do
  arch arm: "arm64", intel: "x64"

  version "1.5.6"
  sha256 arm:   "61db23a78ebae789f10f0c4fad5d57dcb36e285ebd3b8c76f146d552d72c4b9a",
         intel: "a5c994f7d94715412ef296423b959b44cd2d17ed58860c813cda41570313f401"

  url "https://github.com/erkyrath/lectrote/releases/download/lectrote-#{version}/Lectrote-#{version}-macos-#{arch}.dmg"
  name "Lectrote"
  desc "Interactive Fiction interpreter in an Electron shell"
  homepage "https://github.com/erkyrath/lectrote"

  depends_on macos: ">= :big_sur"

  app "Lectrote.app"

  zap trash: [
    "~/Library/Application Support/Lectrote",
    "~/Library/Preferences/com.eblong.lectrote.plist",
  ]
end
