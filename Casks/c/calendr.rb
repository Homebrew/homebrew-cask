cask "calendr" do
  version "1.26.0"
  sha256 "642c0956fd0f169812df3aced0dcbc8ab7a861f0a017da2109400813fded0d5e"

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
