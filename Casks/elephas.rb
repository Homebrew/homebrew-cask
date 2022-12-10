cask "elephas" do
  # use_beta as a selector if beta or latest version is installed
  use_beta = true

  version :latest
  sha256 :no_check

  version_suffix = use_beta && "beta" || "latest"

  url "https://elephas.app/downloads/Elephas_#{version_suffix}.dmg"
  name "elephas"
  desc "Personal AI Writing Assistant for Mac"
  homepage "https://elephas.app/"

  app "Elephas.app"
end
