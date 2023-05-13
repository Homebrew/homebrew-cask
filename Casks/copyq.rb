cask "copyq" do
  on_catalina :or_older do
    version "5.0.0"
    sha256 "7201ff51d1258c8eae03580262a96bbee7d65c6e2133b0d5d6f10f95f031edd4"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "7.0.0"
    sha256 "4c06394d561286eedd618189dc82d9f14ecfe8c5e34f55e2b297b33cef355e29"
  end

  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg.zip",
      verified: "github.com/hluk/CopyQ/"
  name "CopyQ"
  desc "Clipboard manager with advanced features"
  homepage "https://hluk.github.io/CopyQ/"

  app "CopyQ.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/copyq.wrapper.sh"
  binary shimscript, target: "copyq"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/CopyQ.app/Contents/MacOS/CopyQ' "$@"
    EOS
  end

  zap trash: [
    "~/.config/copyq",
    "~/Library/Application Support/copyq",
    "~/Library/Application Support/copyq.log",
    "~/Library/Preferences/com.copyq.copyq.plist",
  ]

  caveats do
    unsigned_accessibility
  end
end
