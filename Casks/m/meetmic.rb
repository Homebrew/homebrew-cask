cask "meetmic" do
  version "1.31.372"
  sha256 "46a0b31ad15a03f231e4fc2b727091b2814c5bed00412aa4be77df17dbb56bcd"

  url "https://meetmicapp.s3.us-west-002.backblazeb2.com/MeetMic_#{version}.zip",
      verified: "meetmicapp.s3.us-west-002.backblazeb2.com/"
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
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "MeetMic.app"

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
