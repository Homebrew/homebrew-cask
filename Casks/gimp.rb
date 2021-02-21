# typed: false
# frozen_string_literal: true

cask "gimp" do
  version "2.10.22,-3"
  sha256 "844dc06731cbd8ccaa6ffd4e0c74ad49ed1ecb6ae65db71988102acb6c219d56"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version.before_comma}-x86_64#{version.after_comma}.dmg"
  appcast "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/"
  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  auto_updates true

  app "GIMP-#{version.major_minor}.app"
  binary "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp"

  postflight do
    set_permissions "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp", "a+rx"
  end

  zap trash: [
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Application Support/Gimp",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
