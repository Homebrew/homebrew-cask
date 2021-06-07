cask "superintendent" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/tanin47/superintendent/releases/download/#{version}/superintendent-#{version}.dmg",
      verified: "https://github.com/tanin47/superintendent"
  name "Superintendent"
  desc "Load multiple CSVs and write SQL"
  homepage "https://superintendent.app/"

  app "superintendent.app"
end
