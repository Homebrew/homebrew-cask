cask "epic" do
  arch arm: "arm", intel: "intel"

  version "117.0.5938.92"
  sha256 arm:   "bac7bdf1da335ff1acb0f5136e9e9e871944acfd6a49f4d4e520abb7e5ee08d5",
         intel: "996a1a80c86183c97af33f1ea19ee594dda7586a4db3b94a08e066776863f663"

  url "https://cdn.epicbrowser.com/mac#{version.major}#{arch}/epic_#{version}.dmg"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank-you"
    regex(%r{href=.*?/epic[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Epic.app"
end
