cask "background-music" do
  version "0.4.0"
  sha256 "f170957702c48f96c0fa9706b72f6d6048bcc87be393eb1d01289c20e1111325"

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/v#{version}/BackgroundMusic-#{version}.pkg"
  name "Background Music"
  desc "Audio utility"
  homepage "https://github.com/kyleneideck/BackgroundMusic"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall script: {
    executable: "/Applications/Background Music.app/Contents/Resources/uninstall.sh",
    sudo:       true,
  }

  zap trash: "~/Library/Preferences/com.bearisdriving.BGM.App.plist"
end
