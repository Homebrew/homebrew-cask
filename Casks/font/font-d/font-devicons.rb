cask "font-devicons" do
  version "2.3.0"
  sha256 "8ce1f600992c7c8b182f550b3b9a78560e27d1945f442cf846b150e9ad2e19c9"

  url "https://registry.npmjs.org/devicons/-/devicons-#{version}.tgz"
  name "Devicons"
  homepage "https://devicons.io/"

  font "package/dist/devicons.ttf"

  # No zap stanza required
end
