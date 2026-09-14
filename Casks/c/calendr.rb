cask "calendr" do
  version "1.25.3"
  sha256 "c88c9c8581998b4e2b5d01b841c60c348ef536b3b1d55094c1ab25a34a1e340c"

  url "https://github.com/pakerwreah/Calendr/releases/download/v#{version}/Calendr.zip"
  name "Calendr"
  desc "Menu bar calendar"
  homepage "https://github.com/pakerwreah/Calendr"

  auto_updates true
  depends_on macos: :sequoia

  app "Calendr.app"

  uninstall quit: "br.paker.Calendr"

  zap trash: [
    "~/Library/Application Scripts/br.paker.Calendr",
    "~/Library/Containers/br.paker.Calendr",
  ]
end
