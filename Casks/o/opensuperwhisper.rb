cask "opensuperwhisper" do
  version "0.0.3"
  sha256 "01de2b8ba57360916457a926a2a13ec486f33080b6347d635c4da0721c20a2e4"

  url "https://github.com/starmel/OpenSuperWhisper/releases/download/#{version}/OpenSuperWhisper.dmg"
  name "OpenSuperWhisper"
  desc "Whisper dictation/transcription app"
  homepage "https://github.com/starmel/OpenSuperWhisper"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "OpenSuperWhisper.app"

  zap trash: [
    "~/Library/Application Scripts/ru.starmel.OpenSuperWhisper",
    "~/Library/Application Support/ru.starmel.OpenSuperWhisper",
  ]
end
