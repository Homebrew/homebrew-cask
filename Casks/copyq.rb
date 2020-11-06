cask "copyq" do
  version "3.13.0"
  sha256 "07c12f91649d512616d9eef9a9492d7041f31620a4fbeeae1baae0d5b73c3461"

  # github.com/hluk/CopyQ/ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
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

  caveats do
    unsigned_accessibility
  end
end
