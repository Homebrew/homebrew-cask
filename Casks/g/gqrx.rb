cask "gqrx" do
  version "2.17.4"
  sha256 "4475ba36c8a3707d29b5b5cff9260b4f234f96c5c785ab777dd493480ee150a5"

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

  zap trash: "~/.config/gqrx"
end
