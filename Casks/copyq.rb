cask "copyq" do
  if MacOS.version <= :catalina
    version "5.0.0"
    sha256 "7201ff51d1258c8eae03580262a96bbee7d65c6e2133b0d5d6f10f95f031edd4"

    livecheck do
      skip "Legacy version for Catalina and earlier"
    end
  else
    version "6.1.0"
    sha256 "88b4018029c9c344b0a9ac104d37af188b897a8265a26267386f27987458d5e1"
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
