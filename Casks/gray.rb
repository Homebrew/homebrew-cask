cask "gray" do
  version "0.16.0"
  sha256 "e90a4eb35f258af6abf6fe2d37a3471071a805426aea5a04e9092c8a617015b9"

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast "https://github.com/zenangst/Gray/releases.atom"
  name "Gray"
  desc "Tool to set light or dark appearance on a per-app basis"
  homepage "https://github.com/zenangst/Gray"

  depends_on macos: ">= :mojave"

  app "Gray.app"
end
