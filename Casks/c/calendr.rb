cask "calendr" do
  version "1.25.1"
  sha256 "6d4950a636bb16417b9664fe8b7908b3cad0ca6c2e1f4eaea04530384cc356bf"

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
