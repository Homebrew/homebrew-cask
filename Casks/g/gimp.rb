cask "gimp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.10.34-3"
  sha256 arm:   "037779aab7924ec0faa3c941ecc194ae51bc329321f06203b38c647fde88a205",
         intel: "03dc1d98eec58e49f0fa2c001e313822ee493efdf5b80f347ca8d0885eb38e15"

  url "https://download.gimp.org/gimp/v#{version.major_minor}/macos/gimp-#{version}-#{arch}.dmg"
  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/"
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:\.\d+)+(-\d)?)[._-]#{arch}\.dmg}i)
  end

  conflicts_with cask: "homebrew/cask-versions/gimp-dev"

  app "GIMP.app"
  shimscript = "#{staged_path}/gimp.wrapper.sh"
  binary shimscript, target: "gimp"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      "#{appdir}/GIMP.app/Contents/MacOS/gimp" "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Gimp",
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
