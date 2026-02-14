cask "opensuperwhisper" do
  version "0.0.7"
  sha256 "62266aa99b13226e5cbf7446f14c21caab98a45d0280095092094f29d8e131f2"

  url "https://github.com/starmel/OpenSuperWhisper/releases/download/#{version}/OpenSuperWhisper.dmg"
  name "OpenSuperWhisper"
  desc "Whisper dictation/transcription app"
  homepage "https://github.com/starmel/OpenSuperWhisper"

  # There can be a notable gap between when a version is tagged and a
  # corresponding release is created, so we check the "latest" release instead
  # of the Git tags.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "OpenSuperWhisper.app"

  zap trash: [
    "~/Library/Application Scripts/ru.starmel.OpenSuperWhisper",
    "~/Library/Application Support/ru.starmel.OpenSuperWhisper",
  ]
end
