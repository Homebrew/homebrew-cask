cask "scene-maestro" do
  version "1.3.3"
  sha256 "0cc5ea56e0b885d5e5b876d00e0f0563052e7c5360db10661f076cc6b499ed3c"

  url "https://sceni.ca/download/scene-maestro/scene-maestro-#{version}.zip"
  name "Scene Maestro"
  desc "Conduct an orchestra of screens"
  homepage "https://sceni.ca/en/scene-maestro/"

  livecheck do
    url :homepage
    regex(/href=.*?scene-maestro[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Scene Maestro.app"

  zap trash: [
    "~/Library/Caches/Scene Maestro",
    "~/Library/Preferences/ByHost/ca.sceni.SceneMaestro.B97E4AB2-D53B-5F4B-8160-0481CF87A038.plist",
    "~/Library/Preferences/ca.sceni.SceneMaestro.plist"
  ]
end
