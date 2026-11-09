cask "font-devicons" do
  version "2.4.0"
  sha256 "35ac50ba9a7e5b2e08556c47eb6355da3f1c83598cd2f8f9b79cc5ca81a4a3dc"

  url "https://registry.npmjs.org/devicons/-/devicons-#{version}.tgz"
  name "Devicons"
  homepage "https://devicons.io/"

  font "package/dist/devicons.ttf"

  zap :not_required
end
