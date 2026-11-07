cask "art" do
  version "1.26.10"

  on_arm do
    sha256 "749f6013ca51293cbbdbd926fa437a1a23ae876460b9c7cb959c4f90e0c03559"

    url "https://github.com/artraweditor/ART/releases/download/#{version}/ART-#{version}_macOS-14.8_arm64.dmg"
  end
  on_intel do
    sha256 "61ab06b8a36f24260d230def2ca28ea142b47c60df9378bcb180e0ab010d38d2"

    url "https://github.com/artraweditor/ART/releases/download/#{version}/ART-#{version}_macOS-15.7_x64.dmg"
  end

  name "ART"
  desc "Raw photo editor"
  homepage "https://github.com/artraweditor/ART"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ART.app"

  zap trash: [
    "~/Library/Application Support/ART",
    "~/Library/Caches/com.rawtherapee.ART",
    "~/Library/Preferences/com.rawtherapee.ART.plist",
  ]
end
