cask "muesli" do
  version "0.5.3"
  sha256 "b33748a2bb05009a7aa4d805605239e9ce10c410562f3534455ed9777ee7c115"

  url "https://github.com/pHequals7/muesli/releases/download/v#{version}/Muesli-#{version}.dmg",
      verified: "github.com/pHequals7/muesli/"
  name "Muesli"
  desc "Local-first macOS dictation and meeting transcription on Apple Silicon"
  homepage "https://freedspeech.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Muesli.app"

  zap trash: [
    "~/Library/Application Support/Muesli",
    "~/.cache/muesli",
  ]
end
