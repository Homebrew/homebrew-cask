cask "prince" do
  version "15.1"
  sha256 "61854a487562faa5b23e3e0378b4eed3a29f7bab71c06d4b7ceb064f088117fe"

  url "https://www.princexml.com/download/prince-#{version}-macos.zip"
  name "Prince"
  desc "Convert HTML to PDF"
  homepage "https://www.princexml.com/"

  livecheck do
    url "https://www.princexml.com/download/"
    regex(%r{href=.*?/prince-(\d+(?:\.\d+)*)-macos\.zip}i)
  end

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
