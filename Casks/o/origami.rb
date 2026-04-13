cask "origami" do
  version "0.17.0"
  sha256 "25ac14ab9ad7ee916bc8b44f72c211a295af976e1c7a2f78447a983391d401c1"

  url "https://storage.tryorigami.app/releases/Origami_#{version}_universal.dmg"
  name "Origami"
  desc "Project-oriented terminal manager"
  homepage "https://tryorigami.app/"

  livecheck do
    url "https://storage.tryorigami.app/releases/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Origami.app"

  zap trash: [
    "~/Library/Application Support/app.tryorigami.macos",
    "~/Library/Caches/app.tryorigami.macos",
    "~/Library/Preferences/app.tryorigami.macos.plist",
    "~/Library/WebKit/app.tryorigami.macos",
  ]
end
