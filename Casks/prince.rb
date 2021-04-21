cask "prince" do
  version "14.1"
  sha256 "10b695cf840e93e7b0a4bb0581dfab5f78c4414e6312656325d95dcc27a58fd5"

  url "https://www.princexml.com/download/prince-#{version}-macos.zip"
  name "Prince"
  homepage "https://www.princexml.com/"

  livecheck do
    url "https://www.princexml.com/download/"
    strategy :page_match
    regex(%r{href=.*?/prince-(\d+(?:\.\d+)*)-macos\.zip}i)
  end

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/prince-#{version}-macos/prince.wrapper.sh"
  binary shimscript, target: "prince"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/prince-#{version}-macos/lib/prince/bin/prince' --prefix '#{staged_path}/prince-#{version}-macos/lib/prince' "$@"
    EOS
  end
end
