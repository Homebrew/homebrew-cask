cask "copyq" do
  version "3.13.0"
  sha256 "07c12f91649d512616d9eef9a9492d7041f31620a4fbeeae1baae0d5b73c3461"

  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg",
      verified: "github.com/hluk/CopyQ/"
  appcast "https://github.com/hluk/CopyQ/releases.atom"
  name "CopyQ"
  desc "Clipboard manager with advanced features"
  homepage "https://hluk.github.io/CopyQ/"

  app "CopyQ.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/copyq.wrapper.sh"
  binary shimscript, target: "copyq"

  preflight do
    IO.write shimscript, <<~EOS
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
