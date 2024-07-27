cask "mcedit" do
  version "1.5.6.0"
  sha256 "e2026de3589e3e65086a385ee4e02d607337bc9da11357d1b3ac106e2ee843d7"

  url "https://github.com/Podshot/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip",
      verified: "github.com/Podshot/MCEdit-Unified/"
  name "MCEdit-Unified"
  desc "Minecraft world editor"
  homepage "https://www.mcedit.net/"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "mcedit.app"

  caveats do
    requires_rosetta
  end
end
