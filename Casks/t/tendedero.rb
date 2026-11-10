cask "tendedero" do
  version "1.9.0"
  sha256 "f37a24b7b125d73a2c40062e5e0d751304f3fd1db5cb8368f4f21c05cf211fe3"

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
