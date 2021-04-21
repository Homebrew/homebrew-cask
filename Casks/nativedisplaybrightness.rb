cask "nativedisplaybrightness" do
  version "0.0.5"
  sha256 "2b79979892170036a5170746ca542518f20c980f5b5b08e067debd3e6fd14e11"

  url "https://github.com/Bensge/NativeDisplayBrightness/releases/download/v#{version}/NativeDisplayBrightness_#{version.dots_to_underscores}.app.zip"
  name "NativeDisplayBrightness"
  homepage "https://github.com/Bensge/NativeDisplayBrightness/"

  app "NativeDisplayBrightness.app"

  uninstall quit: "com.bensge.NativeDisplayBrightness"
end
