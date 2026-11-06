cask "tendedero" do
  version "1.8.1"
  sha256 "bd63e421c5b836868b22385e5d328254395b23ff36458d25b26dce33aefffcf5"

  url "https://github.com/alejandrobujan/tendedero/releases/download/v#{version}/Tendedero-#{version}.dmg"
  name "Tendedero"
  desc "Screenshot and screen recording manager"
  homepage "https://tendedero.app/"

  depends_on macos: :sonoma

  app "Tendedero.app"

  uninstall quit: "app.tendedero.Tendedero"

  zap trash: [
    "~/Library/Application Support/Tendedero",
    "~/Library/Preferences/app.tendedero.Tendedero.plist",
  ]
end
