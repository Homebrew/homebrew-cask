cask "muesli" do
  version "0.8.2"
  sha256 "3f8c71297ad948f9be8172ebad40f5e563446f59f0eea6526f4fc3079d8518ae"

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
    "~/Library/Caches/com.muesli.app",
    "~/Library/HTTPStorages/com.muesli.app",
    "~/Library/Preferences/com.muesli.app.plist",
  ]
end
