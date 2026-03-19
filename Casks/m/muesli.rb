cask "muesli" do
  version "0.5.3"
  sha256 "a82d2099d24c4ae507a20f1504b64d93b5d7a22b5d13967d2af596b8d964cc02"

  url "https://github.com/pHequals7/muesli/releases/download/v#{version}/Muesli-#{version}.dmg",
      verified: "github.com/pHequals7/muesli/"
  name "Muesli"
  desc "Local-first dictation and meeting transcription"
  homepage "https://freedspeech.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Muesli.app"

  zap trash: [
    "~/.cache/muesli",
    "~/Library/Application Support/Muesli",
  ]
end
