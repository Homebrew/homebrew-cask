cask "prepros" do
  version "7.3.38"
  sha256 "d4853299975ffceba8335b2a36bb0dc58be9e8d5e047050838f513603af6823c"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  name "Prepros"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"
end
