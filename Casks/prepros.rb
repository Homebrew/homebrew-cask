cask "prepros" do
  version "7.3.26"
  sha256 "88e768112eacc410a9330eb11ff135cc52b3b53dceca1e8c8a2c9695362e89da"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  name "Prepros"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
