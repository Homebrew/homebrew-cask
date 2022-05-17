cask "inkscape" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "1.2"

  if Hardware::CPU.intel?
    sha256 "c05e2ebf1742391c4c3ad5374819f3b5f2ae1cc9c94d860200ce3a36375c528c"
  else
    sha256 "9a3fce6630b7268e1548f7f1d96dc7cf0f0614284895d6e09eeba503b804d372"
  end

  url "https://inkscape.org/gallery/item/33441/Inkscape-#{version}.0_#{arch}.dmg"
  name "Inkscape"
  desc "Vector graphics editor"
  homepage "https://inkscape.org/"

  livecheck do
    url "https://inkscape.org/release"
    strategy :header_match
  end

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
