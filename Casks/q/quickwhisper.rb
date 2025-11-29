cask "quickwhisper" do
  version "1.18.198"
  sha256 "5ec4290c4c8a7c97f3bbae793c68848463d1e2ac90d5e89b8cb23841d683809e"

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
