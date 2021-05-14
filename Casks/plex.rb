cask "plex" do
  version "1.31.1.2262-74fdc6b7"
  sha256 "3e304ab3f39aa798f445470f78bb1c4250c071605ce8eba5a17bea2eedb8630d"

  url "https://downloads.plex.tv/plex-desktop/#{version}/macos/Plex-#{version}-x86_64.zip"
  name "Plex"
  desc "Home media player"
  homepage "https://www.plex.tv/"

  livecheck do
    url "https://plex.tv/api/downloads/6.json"
    regex(/"version"\s*:\s*"(\d(?:\.\d+)*-[a-f0-9]{8})"/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Plex.app"

  zap trash: [
    "~/Library/Application Support/Plex",
    "~/Library/Caches/Plex",
    "~/Library/Logs/Plex",
  ]
end
