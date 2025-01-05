cask "scene-maestro" do
  version "1.3.3"
  sha256 "0cc5ea56e0b885d5e5b876d00e0f0563052e7c5360db10661f076cc6b499ed3c"

  url "https://sceni.ca/download/scene-maestro/scene-maestro-#{version}.zip"
  name "Scene Maestro"
  desc "Remote control video playback on Scenica Player-equipped hosts"
  homepage "https://sceni.ca/en/scene-maestro/"

  livecheck do
    url :homepage
    regex(/href=.*?scene-maestro[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :big_sur"

  app "Scene Maestro.app"

  zap trash: [
    "~/Library/Caches/Scene Maestro",
    "~/Library/Preferences/ByHost/ca.sceni.SceneMaestro.*.plist",
    "~/Library/Preferences/ca.sceni.SceneMaestro.plist",
  ]
end
