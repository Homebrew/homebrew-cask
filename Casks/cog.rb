cask "cog" do
  version "271b9b34"
  sha256 "a93eb11727c44f0a1c36aa998882aa80f326f11cea159e1b2ebcb76582f9a38d"

  url "https://cogcdn.cog.losno.co/Cog-#{version}.zip"
  name "Cog"
  desc "Audio player"
  homepage "https://cog.losno.co/"

  livecheck do
    url "https://cogcdn.cog.losno.co/mercury.xml"
    regex(/Cog[._-]v?(.+)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Cog.app"

  uninstall quit: "org.cogx.cog"

  zap trash: [
    "~/Library/Application Support/Cog",
    "~/Library/Caches/org.cogx.cog",
  ]
end
