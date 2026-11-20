cask "tendedero" do
  version "2.0.0"
  sha256 "fda29af9cfa50d16521d0ff78c98c83c495eb402864e82183784c37df1770559"

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
