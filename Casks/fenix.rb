cask "fenix" do
  version "2.0.0"
  sha256 "f2155a6611c7048f0f3a94c06de6cfa4b2e6e5df05e1d68ed7c9aebf8786c1cf"

  # github.com/coreybutler/fenix/ was verified as official when first introduced to the cask
  url "https://github.com/coreybutler/fenix/releases/download/v#{version}/fenix-osx-#{version}.zip"
  appcast "https://github.com/coreybutler/fenix/releases.atom"
  name "Fenix"
  desc "Simple and visual static web server with collaboration features"
  homepage "https://fenixwebserver.com/"

  container nested: "Fenix_#{version}.dmg"

  app "Fenix.app"
end
