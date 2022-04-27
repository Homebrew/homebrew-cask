cask "copyq" do
  if MacOS.version <= :catalina
    version "5.0.0"
    sha256 "7201ff51d1258c8eae03580262a96bbee7d65c6e2133b0d5d6f10f95f031edd4"

    livecheck do
      skip "Legacy version for Catalina and earlier"
    end
  else
    version "6.0.1"
    sha256 "b1fa44d9fc3db1c9f270e031e891201d0bbac36faffc3be6c994a7515328cec6"
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
