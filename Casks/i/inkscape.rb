cask "inkscape" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.2"
  sha256 arm:   "d3b182d1f6804f01eb13195325c5376ee7147561f2cfd59c3920c34f0e0858d8",
         intel: "7c3347c274a5f8c9fb8c076b3d745e509b400e21127067edfa77adf4ca40834e"

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
