cask "meetmic" do
  version "1.37.614"
  sha256 "f8147c5ef79fc9a8ddad0a14204f1b814a9cf7f75fda9f985b1c6c5854365ccf"

  url "https://meetmicdev.s3.us-west-002.backblazeb2.com/MeetMic-#{version}.zip"
  name "MeetMic"
  desc "Audio transcription tool"
  homepage "https://meetmic.app/"

  livecheck do
    url "https://f002.backblazeb2.com/file/meetmicapp/appcast.xml"
    regex(/MeetMic[._-]v?(\d+(?:\.\d+)+)\.zip/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "MeetMic.app"
  binary "#{appdir}/MeetMic.app/Contents/MacOS/meetmic-cli", target: "meetmic"

  zap trash: [
    "~/Library/Application Scripts/ltd.iwt.QuickWhisper",
    "~/Library/Application Scripts/ltd.iwt.QuickWhisper.QuickWhisperWidget",
    "~/Library/Application Scripts/ltd.iwt.QuickWhisper.Transcribe",
    "~/Library/Caches/ltd.iwt.QuickWhisper",
    "~/Library/Containers/ltd.iwt.QuickWhisper",
    "~/Library/Containers/ltd.iwt.QuickWhisper.QuickWhisperWidget",
    "~/Library/Containers/ltd.iwt.QuickWhisper.Transcribe",
  ]
end
