cask "openscad" do
  version "2019.05"
  sha256 "df6f6f3d34ac0d07f533ec4ccf59082189fb37c0276c1b8df651291e2509420e"

  url "https://files.openscad.org/OpenSCAD-#{version}.dmg"
  appcast "https://github.com/openscad/openscad/releases.atom"
  name "OpenSCAD"
  homepage "https://www.openscad.org/"

  app "OpenSCAD.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/openscad.wrapper.sh"
  binary shimscript, target: "openscad"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/OpenSCAD.app/Contents/MacOS/OpenSCAD' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Caches/org.openscad.OpenSCAD",
    "~/Library/Preferences/org.openscad.OpenSCAD.plist",
    "~/Library/Saved Application State/org.openscad.OpenSCAD.savedState",
  ]
end
