cask "muesli" do
  version "0.7.1"
  sha256 "b911e5e14874cf971590f8943eb55eba2bba839fc8a881544a8939eaafa1e2ee"

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
