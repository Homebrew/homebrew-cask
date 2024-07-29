cask "nativedisplaybrightness" do
  version "0.0.5"
  sha256 "2b79979892170036a5170746ca542518f20c980f5b5b08e067debd3e6fd14e11"

  url "https://github.com/Bensge/NativeDisplayBrightness/releases/download/v#{version}/NativeDisplayBrightness_#{version.dots_to_underscores}.app.zip"
  name "NativeDisplayBrightness"
  homepage "https://github.com/Bensge/NativeDisplayBrightness/"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "NativeDisplayBrightness.app"

  uninstall quit: "com.bensge.NativeDisplayBrightness"

  caveats do
    requires_rosetta
  end
end
