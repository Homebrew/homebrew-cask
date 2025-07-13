cask "lectrote" do
  arch arm: "arm64", intel: "x64"

  version "1.5.5"
  sha256 arm:   "4245360a5455f21ee7f22b78af56c0a35422e86adb24f80d61dc3764b34fd504",
         intel: "870a200af1b5e56a6ec8942b5091e83019b5cc68f2542305dbb568bfcd5d02ef"

  url "https://github.com/erkyrath/lectrote/releases/download/lectrote-#{version}/Lectrote-#{version}-macos-#{arch}.dmg"
  name "Lectrote"
  desc "Interactive Fiction interpreter in an Electron shell"
  homepage "https://github.com/erkyrath/lectrote"

  depends_on macos: ">= :catalina"

  app "Lectrote.app"

  zap trash: [
    "~/Library/Application Support/Lectrote",
    "~/Library/Preferences/com.eblong.lectrote.plist",
  ]
end
