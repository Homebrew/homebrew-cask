cask "sauron" do
  version "0.1.1"
  sha256 "80ab2137e02dde2e112327691882ef3f913f9e99097f61d30d8ef53642cff8f4"

  url "https://github.com/chasebank87/Sauron/releases/download/v#{version}/Sauron-#{version}.zip"
  name "Sauron"
  desc "Menu bar meeting assistant with local capture, transcripts, and memory"
  homepage "https://github.com/chasebank87/Sauron"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Sauron.app"

  zap trash: [
    "~/Library/Application Support/Sauron",
    "~/Library/Preferences/app.sauron.Sauron.plist",
  ]

  caveats <<~EOS
    Sauron needs Screen Recording, Microphone, and Speech Recognition
    permission on first launch (System Settings → Privacy & Security).
  EOS
end
