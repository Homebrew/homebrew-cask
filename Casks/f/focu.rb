cask "focu" do
  version "0.12.2"
  sha256 "190b6f61158d3c35a60df4847c9f6f43dfa60c3c67e5fb3947170a67d006d6da"

  url "https://github.com/focu-app/focu-app/releases/download/v#{version}/Focu_#{version}_aarch64.dmg",
      verified: "github.com/focu-app/focu-app/"
  name "Focu"
  desc "Mindful productivity app"
  homepage "https://focu.app/"

  livecheck do
    url "https://focu.app/api/latest-release"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64

  app "Focu.app"

  uninstall quit: "app.focu.Focu"

  zap trash: [
        "~/Documents/Focu/backups",
        "~/Library/Application Support/app.focu.Focu",
        "~/Library/Caches/app.focu.Focu",
        "~/Library/WebKit/app.focu.Focu",
      ],
      rmdir: "~/Documents/Focu"
end
