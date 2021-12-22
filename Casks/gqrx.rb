cask "gqrx" do
  version "2.15.1"
  sha256 "d3c5695a4a7f981ea463fdde35e517bf2147c81dcd57196761f982d6a1c7874e"

  url "https://github.com/gqrx-sdr/gqrx/releases/download/v#{version.major_minor_patch}/Gqrx-#{version}.dmg",
      verified: "github.com/gqrx-sdr/gqrx/"
  name "Gqrx"
  desc "Software-defined radio receiver powered by GNU Radio and Qt"
  homepage "https://gqrx.dk/"

  depends_on macos: ">= :catalina"

  app "Gqrx.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gqrx.wrapper.sh"
  binary shimscript, target: "gqrx"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Gqrx.app/Contents/MacOS/gqrx' "$@"
    EOS
  end
end
