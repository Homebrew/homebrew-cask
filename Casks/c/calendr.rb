cask "calendr" do
  version "1.20.4"
  sha256 "55a99ffce7958e56396a76c7924a841d49e4187d322e71412d90d3df4281eaa0"

  url "https://github.com/pakerwreah/Calendr/releases/download/v#{version}/Calendr.zip"
  name "Calendr"
  desc "Menu bar calendar"
  homepage "https://github.com/pakerwreah/Calendr"

  depends_on macos: ">= :sonoma"

  app "Calendr.app"

  zap trash: [
    "~/Library/Application Scripts/br.paker.Calendr",
    "~/Library/Containers/br.paker.Calendr",
  ]
end
