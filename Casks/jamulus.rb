cask "jamulus" do
  version "3.9.0"

  if MacOS.version <= :mojave
    sha256 "156555cdbd1ff618375f7c9d03a4da5fbd7d19ed57d67db8675ba6f57170e228"
    suffix = "_legacy"
  elsif Hardware::CPU.intel?
    sha256 "65f04e749c997bde9e1d814cd0423dd6a3fb6868ed1c62e5f8a8f9f2a1a5160c"
    suffix = ""
  else
    sha256 "353ed99c0497f2b2b668a910ab4f954a7ba51b8bca8c205c8f1c47db98e87fd5"
    suffix = "_arm64"
  end

  url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac#{suffix}.dmg",
      verified: "downloads.sourceforge.net/llcon/"
  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  depends_on macos: ">= :catalina"

  app "Jamulus.app"
  app "JamulusServer.app"
end
