cask "staruml" do
  arch arm: "-arm64"

  version "6.0.1"
  sha256 arm:   "b29dbfec7232a653baf0a0d796160c93b4d908321f403298722ac15772d9c3aa",
         intel: "b29dbfec7232a653baf0a0d796160c93b4d908321f403298722ac15772d9c3aa"

  url "https://staruml.io/download/releases-v#{version.major}/StarUML-#{version}#{arch}.dmg"
  name "StarUML"
  desc "Software modeler"
  homepage "https://staruml.io/"

  livecheck do
    url "https://staruml.io/download"
    regex(%r{href=.*?/StarUML[._-]v?(\d+(?:\.\d+)*)#{arch}\.dmg}i)
  end

  app "StarUML.app"

  zap trash: [
    "~/Library/Application Support/StarUML",
    "~/Library/Preferences/io.staruml.staruml.plist",
    "~/Library/Saved Application State/io.staruml.staruml.savedState",
  ]
end
