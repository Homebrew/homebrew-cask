cask "prudent" do
  version "23.0.43.3,23"
  sha256 "b9739fc685e24f1c4abac9ea4108ff51098990317e85480035e87a7e683a38fb"

  # github.com/PrudentMe/main/ was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast "https://github.com/PrudentMe/main/releases.atom",
          must_contain: version.after_comma
  name "Prudent"
  homepage "https://prudent.me/"

  app "Prudent.app"
end
