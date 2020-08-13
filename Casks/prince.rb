cask "prince" do
  version "13.5"
  sha256 "6c0f35494f2ca7fc6909513c03f09fbe6a9184b8bc28ecc34032ab53844d0f04"

  url "https://www.princexml.com/download/prince-#{version}-macos.tar.gz"
  appcast "https://www.princexml.com/download/"
  name "Prince"
  homepage "https://www.princexml.com/"

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
