cask "prepros" do
  version "7.3.50"
  sha256 "890ddf5611b2da3f428a98f6f2e42f868bacf13266ffcd2327433e290eda3062"

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
