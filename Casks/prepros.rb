cask "prepros" do
  version "7.3.39"
  sha256 "7d25fb30f01323755ab84769c42c356cd786d2113c54e103751dd66bdc51f7be"

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
