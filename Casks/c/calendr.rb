cask "calendr" do
  version "1.22.2"
  sha256 "809bd50743f33eb41555129bebd95a62b1e78f7769c112578733dd3beccb97b1"

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
