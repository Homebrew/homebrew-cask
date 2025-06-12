cask "prince" do
  version "16"
  sha256 "26411806cd8ef0e45a3b26a20edca5e8a1b4b86ab2defbfcd0e472e77737b4aa"

  url "https://www.princexml.com/download/prince-#{version}-macos.zip"
  name "Prince"
  desc "Convert HTML to PDF"
  homepage "https://www.princexml.com/"

  livecheck do
    url "https://www.princexml.com/download/"
    regex(/>\s*Prince\s+v?(\d+(?:\.\d+)*)/i)
  end

  no_autobump! because: :requires_manual_review

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/prince-#{version}-macos/prince.wrapper.sh"
  binary shimscript, target: "prince"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/prince-#{version}-macos/lib/prince/bin/prince' --prefix '#{staged_path}/prince-#{version}-macos/lib/prince' "$@"
    EOS
  end

  # No zap stanza required
end
