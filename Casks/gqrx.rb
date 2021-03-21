cask "gqrx" do
  version "2.14.4"
  sha256 "4ceafde17ccb4a8e5780b3df490f7b9346fb60f2338ec6b7856e9f04a44b806c"

  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor_patch}/Gqrx-#{version}.dmg",
      verified: "github.com/csete/gqrx/"
  name "Gqrx"
  desc "Software-defined radio receiver powered by GNU Radio and Qt"
  homepage "https://gqrx.dk/"

  depends_on macos: ">= :catalina"

  app "Gqrx.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gqrx.wrapper.sh"
  binary shimscript, target: "gqrx"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Gqrx.app/Contents/MacOS/gqrx' "$@"
    EOS
  end
end
