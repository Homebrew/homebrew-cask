cask "swimat" do
  version "1.6.2"
  sha256 "0bd8f283d5d396efe8a479910264ade87bf814cf51e65e46bf58c521206a7663"

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast "https://github.com/Jintin/Swimat/releases.atom"
  name "Swimat"
  desc "Xcode formatter plug-in for Swift code"
  homepage "https://github.com/Jintin/Swimat"

  app "Swimat.app"
end
