cask "prepros" do
  version "7.3.48"
  sha256 "138501cef2671c697065df0f1f9aa9a80434562ac220882c9282698e3f635fe6"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  name "Prepros"
  desc "Web development companion"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
