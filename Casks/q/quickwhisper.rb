cask "quickwhisper" do
  version "1.14.148"
  sha256 "621eee1b9013a8b765d5d939c013d31d81e03b26ee6520a9855dc1fc312f3724"

  url "https://quickwhisperapp.s3.us-west-002.backblazeb2.com/QuickWhisper_#{version}.zip",
      verified: "quickwhisperapp.s3.us-west-002.backblazeb2.com/"
  name "QuickWhisper"
  desc "Audio transcription tool"
  homepage "https://quickwhisper.app/"

  livecheck do
    url "https://f002.backblazeb2.com/file/quickwhisperapp/appcast.xml"
    regex(/QuickWhisper[._-]v?(\d+(?:\.\d+)+)\.zip/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "QuickWhisper.app"

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
