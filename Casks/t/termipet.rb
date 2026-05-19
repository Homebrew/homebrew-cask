cask "termipet" do
  version "0.1"
  sha256 "ae281c823068398bdfd553f00f6484a36f8763dd522a386641311920a0ad7f6a"

  url "https://github.com/bleeeet/TermiPet/releases/download/v#{version}/TermiPet-v#{version}-macOS.zip"
  name "TermiPet"
  desc "Desktop pet assistant for terminals and AI coding tools"
  homepage "https://github.com/bleeeet/TermiPet"

  depends_on macos: :sonoma

  app "TermiPet.app"
end
