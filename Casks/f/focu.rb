cask "focu" do
  version "0.12.0"
  sha256 "887d8f30c7c416092fac5572c645cdf40a0bbe0d1e0edf7fbee738eb190da354"

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
  depends_on macos: ">= :high_sierra"
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
