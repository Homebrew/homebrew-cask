cask "chai" do
  version "3.2.0"
  sha256 "ee2565632e77243efd7d5ffa36f8cc4b479ff0295e2565a15b059c2b7c13485b"

  url "https://github.com/lvillani/chai/releases/download/v#{version}/Chai-v#{version}.zip"
  appcast "https://github.com/lvillani/chai/releases.atom"
  name "Chai"
  desc "Utility to prevent the system from going to sleep"
  homepage "https://github.com/lvillani/chai"

  depends_on macos: ">= :sierra"

  app "Chai.app"
end
