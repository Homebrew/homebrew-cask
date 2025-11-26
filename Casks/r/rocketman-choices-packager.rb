cask "rocketman-choices-packager" do
  version "1.0.0"
  sha256 "f756ac751229c979dc7b05cd0279721712ba65c7573c4a7f6f861d10016abb48"

  url "https://github.com/Rocketman-Tech/Rocketman-Choices-Packager/releases/download/v#{version}/Rocketman-Choices-Packager-v#{version}.pkg"
  name "Rocketman Choices Packager"
  desc "Utility for customising installer package choices"
  homepage "https://github.com/Rocketman-Tech/Rocketman-Choices-Packager"

  pkg "Rocketman-Choices-Packager-v#{version}.pkg"

  uninstall pkgutil: "tech.rocketman.ChoicesPackager"

  zap trash: "~/Library/Preferences/tech.rocketman.ChoicesPackager.plist"
end
