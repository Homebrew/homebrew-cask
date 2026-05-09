cask "motionik" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "acfa7ed0a84f15f095d9f9c767501c310422cc8c081f8a83d46e30a7cea5b3bf",
         intel: "fc12b006846873ee2f7e73b74e7996ed2d69967a9182d49a4a5339801fe94cf7"

  url "https://assets.motionik.com/releases/Motionik-#{version}-#{arch}.dmg"
  name "Motionik"
  desc "Screen recording software"
  homepage "https://motionik.com/"

  livecheck do
    url "https://assets.motionik.com/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :ventura"

  app "Motionik.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.motionik.screenrecorder.sfl*",
        "~/Library/Application Support/motionik",
        "~/Library/Logs/motionik",
        "~/Library/Preferences/com.motionik.screenrecorder.plist",
      ],
      rmdir: "~/Motionik-Recordings"
end
