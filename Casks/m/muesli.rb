cask "muesli" do
  version "0.8.1"
  sha256 "1b129c112ad81e8e8b58f373cbec28ffdd5e2cdd0f581ab424f6fd7af2b8c7d9"

  url "https://github.com/Muesli-HQ/muesli/releases/download/v#{version}/Muesli-#{version}.dmg",
      verified: "github.com/Muesli-HQ/muesli/"
  name "Muesli"
  desc "Local-first dictation and meeting transcription"
  homepage "https://muesli.works/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Muesli.app"

  zap trash: [
    "~/.cache/muesli",
    "~/Library/Application Support/Muesli",
  ]
end
