cask "gqrx" do
  version "2.17.7"

  on_ventura :or_older do
    arch arm: "x86_64", intel: "x86_64"

    sha256 "f3743ac9ba3176f38522d90a7aa9cdab26f1c1d374217fe147c43363a1ced63d"

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    arch arm: "arm64", intel: "x86_64"

    sha256 arm:   "772a826fd47f4deb099be8fe9204ab76ba7d234293a4bb8fb93003c55d4f4976",
           intel: "f3743ac9ba3176f38522d90a7aa9cdab26f1c1d374217fe147c43363a1ced63d"
  end

  url "https://github.com/gqrx-sdr/gqrx/releases/download/v#{version}/Gqrx-#{version}-#{arch}.dmg",
      verified: "github.com/gqrx-sdr/gqrx/"
  name "Gqrx"
  desc "Software-defined radio receiver powered by GNU Radio and Qt"
  homepage "https://www.gqrx.dk/"

  depends_on macos: ">= :ventura"

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

  zap trash: "~/.config/gqrx"
end
