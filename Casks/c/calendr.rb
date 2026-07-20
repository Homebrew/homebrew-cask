cask "calendr" do
  version "1.22.3"
  sha256 "bcc02e84c25ae6a1afc03c34d78c3ad6a72181d0ac8b2d3580e2313275000568"

  url "https://github.com/pakerwreah/Calendr/releases/download/v#{version}/Calendr.zip"
  name "Calendr"
  desc "Menu bar calendar"
  homepage "https://github.com/pakerwreah/Calendr"

  auto_updates true
  depends_on macos: :sonoma

  app "Calendr.app"

  uninstall quit: "br.paker.Calendr"

  zap trash: [
    "~/Library/Application Scripts/br.paker.Calendr",
    "~/Library/Containers/br.paker.Calendr",
  ]
end
