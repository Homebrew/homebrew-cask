cask "font-devicons" do
  version "2.1.0"
  sha256 "cebeb31b08fe704df95da479595d7db96ee1abd284594724b7a98b8ce955c515"

  url "https://registry.npmjs.org/devicons/-/devicons-#{version}.tgz"
  name "Devicons"
  homepage "https://devicons.io/"

  font "package/dist/devicons.ttf"

  # No zap stanza required
end
