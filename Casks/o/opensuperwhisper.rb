cask "opensuperwhisper" do
  version "0.0.4"
  sha256 "89bab368daf97ea9d4710f82d7be781c4d44651f0bc959e4c3cb2691311d7e2c"

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
