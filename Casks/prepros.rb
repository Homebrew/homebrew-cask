cask "prepros" do
  version "7.8.0"
  sha256 "ef153f08aed1171382bf5947d15be688fca24a93353dc385a627c6f60c8d921e"

  url "https://downloads.prepros.io/v#{version.major}/#{version}/Prepros-#{version}.zip"
  name "Prepros"
  desc "Web development companion"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
