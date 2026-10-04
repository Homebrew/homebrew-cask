cask "meetmic" do
  version "1.36.584"
  sha256 "68d74be0ba638f438eac57cb54fa767ffef3e9db065047327dcf2d2077b166c2"

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
