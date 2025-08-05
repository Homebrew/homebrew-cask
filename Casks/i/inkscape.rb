cask "inkscape" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.230579"
  sha256 arm:   "118e9e23190eea1265592a8b2053f5fb67e13a55b9311b2ab284df7008a896b4",
         intel: "f0b05d5195e3aa0ba9d6d6a972f1d7f57abd876532b4d6eb02ecc98c0dcdfdbf"

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}_#{arch}.dmg"
  name "Inkscape"
  desc "Vector graphics editor"
  homepage "https://inkscape.org/"

  livecheck do
    url "https://inkscape.org/release/all/mac-os-x/"
    regex(/Inkscape[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Inkscape.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/inkscape.wrapper.sh"
  binary shimscript, target: "inkscape"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/Inkscape.app/Contents/MacOS/inkscape' "$@"
    EOS
  end

  zap trash: [
    "~/.config/inkscape",
    "~/Library/Application Support/Inkscape",
    "~/Library/Application Support/org.inkscape.Inkscape",
    "~/Library/Caches/org.inkscape.Inkscape*",
    "~/Library/Preferences/org.inkscape.Inkscape.plist",
    "~/Library/Saved Application State/org.inkscape.Inkscape.savedState",
  ]
end
