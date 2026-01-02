cask "focu" do
  version "0.13.0"
  sha256 "628c05c7f7b16b9af1f042d9c3d5bbbf1e0ed0731b585bb4519dd1c06bb15df0"

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
